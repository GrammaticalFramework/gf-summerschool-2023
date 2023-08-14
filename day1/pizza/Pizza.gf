abstract Pizza = {

flags startcat = Phrase ;

cat
  Phrase ;
  Recipient ;
  Object ;
  Kind ;
  Number ;
  Size ;

fun
  Hello : Recipient -> Phrase ;
  World : Recipient ;
  Friends : Recipient ;
  

  Order : Object -> Phrase ;

  NObjects : Number -> Size -> Kind -> Object ;

  One : Number ;
  Two : Number ;

  Beer : Kind ;
  Pizza : Kind ;

  Large, Small, NoSize : Size ;
  
  ILike : Kind -> Phrase ;
  DoYouLike : Kind -> Phrase ;
}