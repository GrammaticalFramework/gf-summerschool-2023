concrete PizzaFin of Pizza =
open
  SyntaxFin,
  ParadigmsFin
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
  Hello rec = mkPhr (lin Utt {s = "moro"}) (SyntaxFin.mkVoc rec) ;
  World = mkNP (mkN "maailma") ;
  Friends = mkNP aPl_Det (mkN "kaveri") ;

  Order obj = mkPhr (mkUtt obj) ;

  NObjects num size kind = mkNP num (mkCN size kind) ;

  One = mkCard "1" ;
  Two = mkCard "2" ;

  Beer = mkCN (mkN "olut" "oluen" "oluita" "olutta") ;
  Pizza = mkCN (mkN "pizza") ;

  Large = mkAP (mkA "iso") ;
  Small = mkAP (mkA (mkN "pieni" "pienen" "pieniä" "pientä")) ;
  NoSize = mkAP (invarA "") ;
  
  ILike kind = mkPhr (mkCl i_NP like_V2 (mkNP kind)) ;
  DoYouLike kind = mkPhr (mkQS (mkCl you_NP like_V2 (mkNP kind))) ;

oper
  like_V2 : V2 = mkV2 (mkV "pitää") elative ;

}