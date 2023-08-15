concrete LocationTimeEng of LocationTime = open SyntaxEng, ParadigmsEng, SymbolicEng in {

    lincat
      Question = Text ;
      Time = Adv ;
      Person = NP ;
      Month = N ;

    lin

      -- : Person -> Time -> Question ;
      WhereWasPersonAtTime person time =
        let
           personIsAtTime : Cl = mkCl person time ;
         in mkText (mkQS pastTense (mkQCl where_IAdv personIsAtTime)) ;

      You = you_NP ;
      She = she_NP ;

      LastNight = ParadigmsEng.mkAdv "last night" ;
      LastChristmas = ParadigmsEng.mkAdv "last christmas" ;

      MonthInt month int = np2adv (symb month <symb int : Card>) ;
      October = mkN "october" ;
      November = mkN "november" ;

  oper

--    np2adv : NP -> Adv = \np -> SyntaxEng.mkAdv (mkPrep "") np ;

    np2adv : NP -> Adv ;
    np2adv np = SyntaxEng.mkAdv (mkPrep (""|"on")) np ;

}