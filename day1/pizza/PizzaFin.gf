concrete PizzaFin of Pizza = open Prelude in {

param
  Num = Sg | Pl ;
  Case = Nom | Part | Elat ;

lincat 
  Phrase = Str ;
  Recipient = Str ;
  Object = Str ;
  Kind = Num => Case => Str ;
  Size = Num => Case => Str ;
  Number = {s : Str ; n : Num} ;

lin
  Hello r = "moro" ++ r ;
  World = "maailma" ;
  Friends = "ystävät" ;

  Order obj = obj ;

  NObjects num size kind =
    num.s ++
    size ! Sg ! numCase num.n ++
    kind ! Sg ! numCase num.n ;

  One = {s = "yksi" ; n = Sg} ;
  Two = {s = "kaksi" ; n = Pl} ;

  Beer = mkNoun "olut" "olutta" "oluet" "oluita" ;
  Pizza = regNoun "pizza" ;

  Large = regNoun "iso" ;
  Small = mkNoun "pieni" "pientä" "pienet" "pieniä" ;

  NoSize = table {_ => table {_ => ""}} ;

  ILike kind = "pidän" ++ kind ! Sg ! Elat ;
  DoYouLike kind = "pidätkö" ++ kind ! Sg ! Elat ;

oper
  numCase : Num -> Case = \n -> case n of {
    Sg => Nom ;
    Pl => Part
    } ;

  regNoun : Str -> Num => Case => Str = \s -> 
     mkNoun s (s + "a") (s + "t") (s + "ja") ;
     
  mkNoun : (sgnom, sgpart, plnom, plpart : Str) -> Num => Case => Str =
    \sgnom, sgpart, plnom, plpart -> table {
     Sg => table {Nom => sgnom ; Part => sgpart ; Elat => init plnom + "sta"} ;
     Pl => table {Nom => plnom ; Part => plpart ; Elat => init plnom + "ista"}
     } ;

  

}