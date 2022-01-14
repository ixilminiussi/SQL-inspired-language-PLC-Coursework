-- Author: Julian Rathke, 2018
-- Provides a CEK implementation of the \Toy language from the lecture notes
module Interpreter where
import Grammar

--Data structures as defined in ToyGrammar:
--data ToyType = TyInt | TyBool | TyUnit | TyPair ToyType ToyType | TyFun ToyType ToyType
--type Environment = [ (String,Expr) ]
--data Expr = TmInt Int | TmTrue | TmFalse | TmUnit | TmCompare Expr Expr 
--           | TmPair Expr Expr | TmAdd Expr Expr | TmVar String 
--           | TmFst Expr | TmSnd Expr
--           | TmIf Expr Expr Expr | TmLet String ToyType Expr Expr
--           | TmLambda String ToyType Expr | TmApp Expr Expr
--           | Cl ( String ToyType Expr Environment)

data Frame = HCompare Expr Environment 
           | CompareH Expr
           | HAdd Expr Environment | AddH Expr
           | HPair Expr Environment | PairH Expr
           | FstH | SndH 
           | HIf Expr Expr Environment | HLet String ToyType Expr Environment
           | HApp Expr Environment | AppH Expr
type Kontinuation = [ Frame ]
type State = (Expr,Environment,Kontinuation)

-- Function to unpack a closure to extract the underlying lambda term and environment
unpack :: Expr -> (Expr,Environment)
unpack (Cl x t e env1) = ((TmLambda x t e) , env1)
unpack e = (e,[])

-- Look up a value in an environment and unpack it
getValueBinding :: String -> Environment -> (Expr,Environment)
getValueBinding x [] = error "Variable binding not found"
getValueBinding x ((y,e):env) | x == y  = unpack e
                              | otherwise = getValueBinding x env

update :: Environment -> String -> Expr -> Environment
update env x e = (x,e) : env

-- Checks for terminated expressions
isValue :: Expr -> Bool
isValue (TmInt _) = True
isValue TmTrue = True
isValue TmFalse = True
isValue TmUnit = True
isValue (TmPair e1 e2) = isValue e1 && isValue e2
isValue (Cl _ _ _ _) = True
isValue _ = False

--Small step evaluation function
eval1 :: State -> State
eval1 ((TmVar x),env,k) = (e',env',k) 
                    where (e',env') = getValueBinding x env
                  
-- Rule for terminated evaluations
eval1 (v,env,[]) | isValue v = (v,env,[])

-- Evaluation rules for less than operator
eval1 ((TmCompare e1 e2),env,k) = (e1,env,(HCompare e2 env):k)
eval1 ((TmInt n),env1,(HCompare e env2):k) = (e,env2,(CompareH (TmInt n)) : k)
eval1 ((TmInt m),env,(CompareH (TmInt n)):k) | n < m = (TmTrue,[],k)
                                             | otherwise = (TmFalse,[],k)

-- Evaluation rules for plus operator
eval1 ((TmAdd e1 e2),env,k) = (e1,env,(HAdd e2 env):k)
eval1 ((TmInt n),env1,(HAdd e env2):k) = (e,env2,(AddH (TmInt n)) : k)
eval1 ((TmInt m),env,(AddH (TmInt n)):k) = (TmInt (n + m),[],k)

-- Evaluation rules for projections
eval1 ((TmFst e1),env,k) = (e1,env, FstH : k)
eval1 ((TmSnd e1),env,k) = (e1,env, SndH : k)
eval1 ((TmPair v w),env, FstH:k) | isValue v && isValue w = ( v , [] , k)
eval1 ((TmPair v w),env, SndH:k) | isValue v && isValue w = ( w , [] , k)

-- Evaluation rules for pairs
eval1 ((TmPair e1 e2),env,k) = (e1,env,(HPair e2 env):k)
eval1 (v,env1,(HPair e env2):k) | isValue v = (e,env2,(PairH v) : k)
eval1 (w,env,(PairH v):k) | isValue w = ( (TmPair v w),[],k)

-- Evaluation rules for if-then-else
eval1 ((TmIf e1 e2 e3),env,k) = (e1,env,(HIf e2 e3 env):k)
eval1 (TmTrue,env1,(HIf e2 e3 env2):k) = (e2,env2,k)
eval1 (TmFalse,env1,(HIf e2 e3 env2):k) = (e3,env2,k)

-- Evaluation rules for Let blocks
eval1 ((TmLet x typ e1 e2),env,k) = (e1,env,(HLet x typ e2 env):k)
eval1 (v,env1,(HLet x typ e env2):k) | isValue v = (e, update env2 x v , k)

--  Rule to make closures from lambda abstractions.
eval1 ((TmLambda x typ e),env,k) = ((Cl x typ e env), [], k)

-- Evaluation rules for application
eval1 ((TmApp e1 e2),env,k) = (e1,env, (HApp e2 env) : k)
eval1 (v,env1,(HApp e env2):k ) | isValue v = (e, env2, (AppH v) : k)
eval1 (v,env1,(AppH (Cl x typ e env2) ) : k )  = (e, update env2 x v, k)

-- Rule for runtime errors
eval1 (e,env,k) = error "Evaluation Error"

-- Function to iterate the small step reduction to termination
evalLoop :: Expr -> Expr 
evalLoop e = evalLoop' (e,[],[])
  where evalLoop' (e,env,k) = if (e' == e) && (isValue e') && (null k) then e' else evalLoop' (e',env',k')
                       where (e',env',k') = eval1 (e,env,k) 

-- Function to unparse underlying values from the AST term
unparse :: Expr -> String 
unparse (TmInt n) = show n
unparse (TmTrue) = "true"
unparse (TmFalse) = "false"
unparse (TmUnit) = "()"
unparse (TmPair e1 e2) = "( " ++ (unparse e1) ++ " , " ++ (unparse e2) ++ " )"
unparse (Cl _ _ _ _) = "Function Value"
unparse _ = "Unknown"
