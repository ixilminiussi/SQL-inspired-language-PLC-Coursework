{
module Grammar where
import Tokens
}

%name parseCalc
%tokentype { Token }
%error { parseError }
%token
    in              { TokenIn _ }
    int             { TokenInt _ $$ }
    var             { TokenVar _ $$ }
    select          { TokenSelect _ }
    column          { TokenColumn _ $$ }
    concatenate     { TokenConcatenate _ }
    and             { TokenAnd _ }
    any             { TokenAny _ }
    conjunction     { TokenConjunction _ }
    where           { TokenWhere _ }
    ','             { TokenComma _ }
    '_'             { TokenUnder _ }
    row             { TokenRow _ }
    '.'             { TokenDot _ }
    '=='            { TokenEqual _ }
    drop            { TokenDrop _ }
    merge           { TokenMerge _ }
    'order by'      { TokenOrderBy _ }
    '='             { TokenAssign _ }
    alphabetical    { TokenAlphabetical _ }
    all             { TokenAll _ }
    or              { TokenOr _ }
    not             { TokenNot _ }
    xor             { TokenXor _ }
    empty           { TokenEmpty _ }
    '"'             { TokenQuotation _ }
    '('             { TokenRParenthesis _ }
    ')'             { TokenLParenthesis _ }
    from            { TokenFrom _ }

%right in
%left '='
%left all any or
%left and
%left not
%left '=='
%left concatenate
%left 'order by'
%left select
%left where
%left from
%%
Exp : '(' Exp ')'                   { $2 }
    | var                           { Var $1 }
    | '"' var '"'                   { Var $2 }
    | '"' Exp '"'                   { $2 }
    | select ColumnConnector Exp    { Select $2 $3 }
    | from TableConnector Exp       { From $2 $3 }
    | concatenate Exp Exp           { Concatenate $2 $3 }
    | any Exp                       { Any $2 }
    | where ColumnConnector Exp     { Where $2 $3 }
    | Exp '_' Exp                   { Under $1 $3 }
    | Exp drop Exp                  { Drop $1 $3 }
    | merge Exp Exp                 { Merge $2 $3 }
    | 'order by' Exp                { OrderBy $2 }
    | Exp '=' Exp                   { Assign $1 $3 }
    | alphabetical                  { Alphabetical }
    | all Exp                       { All $2 }
    | empty                         { Empty }
    | TableConnector                { TableConnector $1 }
    | ColumnConnector               { ColumnConnector $1 }
    | RowConnector                  { RowConnector $1 }
        
TableConnector : var                    { Table $1 }
               | var and TableConnector { And (Table $1) $3 }
               | var '.' TableConnector { Dot (Table $1) $3 }
               | var or TableConnector  { Or (Table $1) $3 }
               | var xor TableConnector { Xor (Table $1) $3 }

ColumnConnector : var '.' var                           { FromTable (Table $1) (Column $3) }
                | int                                   { Int $1 }
                | ColumnConnector ',' ColumnConnector   { Comma $1 $3 }
                | var conjunction ColumnConnector       { Conjunction (Column $1) $3 }
                | ColumnConnector '==' ColumnConnector  { Equal $1 $3 }
                | not ColumnConnector                   { Not $2 }
                | var '.' var '.' var                   { Cell (Table $1) (Column $3) (Row $5) }
                | empty                                 { ColEmpty }
                | column                                { Column $1 }

RowConnector : var  { Row $1 }

{
parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error"
parseError (t:_) = error ("Parse error at line:column " ++ (tokenPosn t))

data Exp = Var String
         | Boolean Bool
         | Select ColumnConnector Exp
         | From TableConnector Exp
         | Concatenate Exp Exp
         | Any Exp
         | Where ColumnConnector Exp
         | Under Exp Exp
         | Drop Exp Exp
         | Merge Exp Exp
         | OrderBy Exp
         | Assign Exp Exp
         | Alphabetical
         | All Exp
         | Empty
         | TableConnector TableConnector
         | ColumnConnector ColumnConnector
         | RowConnector RowConnector
         deriving Show
             
data TableConnector = And TableConnector TableConnector
                    | Dot TableConnector TableConnector
                    | Or TableConnector TableConnector
                    | Xor TableConnector TableConnector
                    | Table String
                    deriving Show
               
data ColumnConnector = FromTable TableConnector ColumnConnector
                     | Comma ColumnConnector ColumnConnector
                     | Conjunction ColumnConnector ColumnConnector
                     | Equal ColumnConnector ColumnConnector
                     | Not ColumnConnector
                     | Int Int
                     | ColEmpty
                     | Column String
                     | Cell TableConnector ColumnConnector RowConnector
                     deriving Show

data RowConnector = Row String
                  deriving Show
}
