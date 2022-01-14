{ 
module Tokens where 
}

%wrapper "posn" 
$digit = 0-9     
$alpha = [a-zA-Z]    

tokens :-
  $white+       ; 
  "--".*        ; 
  in            { \p s -> TokenIn p } -- Is followed by file name or table name
  $digit+       { \p s -> TokenInt p (read s) } 
  select        { \p s -> TokenSelect p } -- What to take, is followed by expression then in and file name
  column        { \p s -> TokenColumn p (read s) } -- column is followed by index number, used to select a specific column
  concatenate   { \p s -> TokenConcatenate p } -- concatenate to a cell 
  and           { \p s -> TokenAnd p } -- Used for boolean expression but also for to add rows to the table
  any           { \p s -> TokenAny p }
  conjunction   { \p s -> TokenConjunction p } -- First table followed by second table, to conjunct 
  where         { \p s -> TokenWhere p } -- where is preceded by a table and followed by a boolean expression
  \,            { \p s -> TokenComma p } -- precede by a table followed by table makes a new table as such table1,table2
  \_            { \p s -> TokenUnder p } --  preceded by a table followed by table makes a new table as such table1 on top of table2
  row           { \p s -> TokenRow p } -- Is preceded by a dot and followed by an index number returns the selected row of a specific table 
  \.            { \p s -> TokenDot p } -- Is preceded by a table and followed by a precision ex : table1.row23.column45
  \==           { \p s -> TokenEqual p } -- Checks if is equal
  drop          { \p s -> TokenDrop p } -- Preceded by a table followed by a part of the table ex : table1 drop row 23
  merge         { \p s -> TokenMerge p } -- 
  order by      { \p s -> TokenOrderBy p } -- Is preceded by a table followed by an order type
  \=            { \p s -> TokenAssign p } -- Assign a value to a variable, is preceded by : let . is followed by a table value
  alphabetical  { \p s -> TokenAlphabetical p } -- Order value sorts by
  all           { \p s -> TokenAll p } -- Deal with all sub table individually ex : all row or all column  
  or            { \p s -> TokenOr p } -- Boolean or 
  not           { \p s -> TokenNot p } -- Boolean not 
  xor           { \p s -> TokenXor p } -- Boolean xor
  empty         { \p s -> TokenEmpty p } -- Stands for the empty string
  \"            { \p s -> TokenQuotation p } -- Used to represent string inside cell
  \(            { \p s -> TokenRParenthesis p } 
  \)            { \p s -> TokenLParenthesis p }
  from          { \p s -> TokenFrom p }
  $alpha [$alpha $digit \_ \’]*   { \p s -> TokenVar p s } 

{ 
-- Each action has type :: AlexPosn -> String -> Token 

-- The token type: 
data Token = 
  TokenIn  AlexPosn        | 
  TokenInt AlexPosn Int    |
  TokenVar AlexPosn String | 
  TokenSelect AlexPosn     |
  TokenColumn AlexPosn String |
  TokenConcatenate AlexPosn |
  TokenAnd AlexPosn        |
  TokenAny AlexPosn        |
  TokenConjunction AlexPosn |
  TokenWhere AlexPosn       |
  TokenComma AlexPosn       |
  TokenUnder AlexPosn       |
  TokenRow AlexPosn         |
  TokenDot AlexPosn         |
  TokenEqual AlexPosn       |
  TokenDrop AlexPosn        |
  TokenMerge AlexPosn       |
  TokenOrderBy AlexPosn     |
  TokenAssign AlexPosn      |
  TokenAlphabetical AlexPosn |
  TokenAll AlexPosn          |
  TokenOr AlexPosn           |
  TokenNot AlexPosn          |
  TokenXor AlexPosn          |
  TokenEmpty AlexPosn        |
  TokenQuotation AlexPosn    |
  TokenRParenthesis AlexPosn |
  TokenLParenthesis AlexPosn |
  TokenFrom AlexPosn
  deriving (Eq,Show) 

tokenPosn :: Token -> String
tokenPosn (TokenInt  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIn  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSelect (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenColumn (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenConcatenate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAny (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenConjunction (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhere (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenComma (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenUnder (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRow (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEqual (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDrop (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMerge (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOrderBy (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAssign (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAlphabetical (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAll (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNot (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenXor (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEmpty (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenQuotation (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParenthesis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParenthesis (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFrom (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
}
