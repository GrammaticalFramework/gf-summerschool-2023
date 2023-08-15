concrete PizzaSwe of Pizza =
open
  SyntaxSwe,
  ParadigmsSwe
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
  Hello rec = mkPhr (lin Utt {s = "hejsan"}) (SyntaxSwe.mkVoc rec) ;
  World = mkNP the_Det (mkN "värld") ;
  Friends = mkNP aPl_Det (mkN "vän" "vänner") ;

  Order obj = mkPhr (mkUtt obj) please_Voc ;

  NObjects num size kind = mkNP num (mkCN size kind) ;

  One = mkCard "1" ;
  Two = mkCard "2" ;

  Beer = mkCN (mkN "öl" "ölen" "öl" "ölen" utrum) ;
  Pizza = mkCN (mkN "pizza") ;

  Large = mkAP (mkA "stor") ;
  Small = mkAP (mkA "liten" "litet" "lilla" "små" "mindre" "minst" "minsta") ;
  NoSize = mkAP (invarA "") ;
  
  ILike kind = mkPhr (mkCl i_NP like_V2 (mkNP kind)) ;
  DoYouLike kind = mkPhr (mkQS (mkCl you_NP like_V2 (mkNP kind))) ;

oper
  like_V2 : V2 = mkV2 (mkV "gilla") ;

}