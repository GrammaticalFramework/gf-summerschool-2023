concrete PizzaLav of Pizza =
open
  SyntaxLav,
  ParadigmsLav,
  (L=LexiconLav)
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
  Hello rec = mkPhr (lin Utt {s = "sveiki"}) (SyntaxLav.mkVoc rec) ;
  World = mkNP (mkN "pasaule") ;
  Friends = mkNP aPl_Det (mkN "draugs") ;

  Order obj = mkPhr (mkUtt (SyntaxLav.mkAdv acc_Prep obj)) please_Voc ;

  NObjects num size kind = mkNP num (mkCN size kind) ;

  One = mkCard "1" ;
  Two = mkCard "2" ;

  Beer = mkCN (mkN "alus") ;
  Pizza = mkCN (mkN "pica") ;

  Large = mkAP (mkA "liels") ;
  Small = mkAP (mkA "mazs") ;
--  NoSize = mkAP (mkA "") ;
  
  ILike kind = mkPhr (mkCl i_NP like_V2 (mkNP kind)) ;
  DoYouLike kind = mkPhr (mkQS (mkCl you_NP like_V2 (mkNP kind))) ;

oper
  like_V2 : V2 = L.like_V2 ;

}