resource ExplainingSomeSyntax = {

-- Inari explaining some syntax about the different arrows etc.

param

   Num = Sg | Pl ;
   Case = Nom | Part ;

oper

--------------------------------------
-- Single arrow -> vs. double arrow =>

   -- This is a function from Num to Case
   -- so it uses a single arrow.
   numCase : Num -> Case = \n ->
        case n of {
          Sg => Nom ;
          Pl => Part } ;

   -- A function is applied to its argument as follows
   myCase = numCase Sg ;

   -- In Python, it would be
   -- myCase = numCase(Sg)

   -- This is a table from Num to Case
   -- so it uses a double arrow.
   numCaseAsTable : Num => Case =
        table {
          Sg => Nom ;
          Pl => Part } ;

   -- A value is extracted from an inflection table as follows, with an !
   myCase' = numCaseAsTable ! Sg ;


------------------------------------------------------------
-- The previous case works either as a table or a function,
-- because the argument type (Num) is finite.
-- Now contrast with an infinite type like Str.

   dupl : Str -> Str ;
   dupl s = s ++ s ;

-- We can't make a table from Str to anything, because Str is infinite.

-- But Str can be the return value of functions and tables alike.

   functionFromParam : Case -> Str = \c -> case c of {
      Nom => "this is nominative" ;
      Part => "this is partitive"
   } ;

   tableFromParam : Case => Str = table {
      Nom => "this is nominative" ;
      Part => "this is partitive"
   } ;

-- In fact, the "case" construct is just syntactic sugar for a table.
-- But you might still want to make a function from a param, because it's
-- nicer to apply `f x` than `f ! x`.

}