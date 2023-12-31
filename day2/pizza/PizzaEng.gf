concrete PizzaEng of Pizza =
open
  SyntaxEng,
  ParadigmsEng
in {

flags startcat = Phrase ;

lincat
  Phrase = Phr ;
  Recipient = NP ;
  Object = NP ;
  Kind = CN ;
  Number = Card ;
  Size = AP ;

lin
  Hello rec = mkPhr (lin Utt {s = "hello"}) (SyntaxEng.mkVoc rec) ;
  World = mkNP (mkN "world") ;
  Friends = mkNP aPl_Det (mkN "friend") ;

  Order obj = mkPhr (mkUtt obj) please_Voc ;

  NObjects num size kind = mkNP num (mkCN size kind) ;

  One = mkCard "1" ;
  Two = mkCard "2" ;

  Beer = mkCN (mkN "beer") ;
  Pizza = mkCN (mkN "pizza") ;

  Large = mkAP (mkA "large") ;
  Small = mkAP (mkA "small") ;
  NoSize = mkAP (mkA "") ;
  
  ILike kind = mkPhr (mkCl i_NP like_V2 (mkNP kind)) ;
  DoYouLike kind = mkPhr (mkQS (mkCl you_NP like_V2 (mkNP kind))) ;

oper
  like_V2 : V2 = mkV2 (mkV "like") ;

}