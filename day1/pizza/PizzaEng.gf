concrete PizzaEng of Pizza = {

param
  Num = Sg | Pl ;

lincat 
  Phrase = Str ;
  Recipient = Str ;
  Object = Str ;
  Kind = Num => Str ;
  Number = {s : Str ; n : Num} ;
  Size = Str ;

lin
  Hello r = "hello" ++ r ;
  World = "world" ;
  Friends = "friends" ;

  Order obj = obj ++ "please" ;

  NObjects num size kind = num.s ++ size ++ kind ! num.n ;

  One = {s = "one" ; n = Sg} ;
  Two = {s = "two" ; n = Pl} ;

  Beer = table {Sg => "beer" ; Pl => "beers"} ;
  Pizza =  table {Sg => "pizza" ; Pl => "pizzas"} ;

  Large = "large" ;
  Small = "small" ;
  NoSize = "" ;

  ILike kind = "I like" ++ kind ! Sg ;
  DoYouLike kind = "do you like" ++ kind ! Sg ;

  


}