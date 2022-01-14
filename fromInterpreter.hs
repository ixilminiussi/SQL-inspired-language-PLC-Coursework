import Data.List

type Table = String

readTable ::  String -> IO String
readTable fileName = do readFile fileName

getRow :: Int -> String -> String -> String
getRow index [] return = return 
getRow index (cell:table) return | index == 0 && cell /= '\n' = getRow index table (return++[cell])
                                 | index == 0 && cell == '\n' = return
                                 | index > 0 && cell == '\n' = getRow (index-1) table return
                                 | otherwise = getRow index table return

getRows :: Table -> Int -> [Table]
getRows table index | row == "" = []
                    | otherwise = row : getRows table (index+1)
                   where
                       row = getRow index table ""

getCols :: String -> Int -> [String]
getCols table index | col == "" = []
                    | otherwise = col : getCols table (index+1)
                   where
                       col = getCol index 0 table ""

conj :: [Table] -> [Table] -> [Table] -> Table 
conj [] [] [] = []
conj [] table22 table2 = []
conj (row1:table1) table22 [] = conj table1 table22 table22
conj (row1:[]) table22 (row2:table2) = (row1++","++row2++",") ++ (conj (row1:[]) table22 (table2) )
conj (row1:table1) table22 (row2:table2) = (row1++","++row2++","++"\n") ++ (conj (row1:table1) table22 (table2) )

conjunctions :: Table -> Table -> Table
conjunctions table1 table2 = conj (getRows table1 0) (getRows table2 0) (getRows table2 0) 


getCol :: Int -> Int -> String -> String -> String
getCol count colNum [] return = return
getCol count colNum (cell:table) return | cell == '\n' && return /= "" = getCol 0 colNum table (return++['\n'])
                                        | cell == ',' = getCol (count+1) colNum table return
                                        | count == colNum = getCol count colNum table (return++[cell])
                                        | otherwise = getCol count colNum table return

mergeTables :: [String] -> [String] -> String
mergeTables (row1 : table1) [] = row1 ++ "\n" ++ mergeTables [] table1
mergeTables [] (row2 : table2) = row2 ++ "\n" ++ mergeTables [] table2
mergeTables (row1:table1) (row2:table2) = row1++","++row2 ++ (mergeTables table1 table2)

comma :: Table -> Table -> Table 
comma table1 table2 = mergeTables (getCols table1) (getCols table2)

linkRows :: [Table] -> Table
linkRows (row:[]) = row++[]
linkRows (row:table) = row++"\n"++linkRows table

alphabetical :: Table -> Table
alphabetical table = linkRows (sort (getRows table 0))

xor :: Bool -> Bool -> Bool
xor bool1 bool2 = (bool1 || bool2) && ((bool1 && bool2)==False)

test :: IO [String]
test = do table <- readTable "table.csv"
          return (getCols table 0 )

evalLoop :: Expr -> Table
eva

isValue :: Expr -> Bool
isValue (Boolean bool) = True
isValue(Var value) = True
isValue (Column value) = True
isValue expr = False

eval :: Expr -> Table
eval(Concatenate expr1 expr2) = concatenate (evalLoop expr1) (evalLoop expr2)
eval(Select expr1 (Select expr1 Where )) =  
eval(Conjunction expr1 expr2) = conjunction (evalLoop expr1) (evalLoop expr2)
eval(Comma expr1 expr2) = comma (evalLoop expr1) (evalLoop expr2)
eval(Table file) = readTable (file++"csv")



evalBoolLoop :: Expr -> Bool
evalBoolLoop expr | isValue expr = expr
                  | otherwise = evalBool expr  

evalBool :: Expr -> Bool
evalBool (And expr1 expr2) = evalBoolLoop expr1 && evalBoolLoop expr1
evalBool (Or expr1 expr2) = evalBoolLoop expr1 || evalBoolLoop expr2
evalBool (Not expr1) = ((evalBoolLoop expr1) == False)
evalBool (Xor expr1 expr2) = xor (evalBoolLoop expr1) (evalBoolLoop expr2)
evalBool (Equal expr1 expr2) = evalBoolLoop expr1 == evalBoolLoop expr2