abstract LocationTime = {
    flags startcat = Question ;

    cat
      Question ;
      Time ;
      Person ;
      Month ;

    fun

      WhereWasPersonAtTime : Person -> Time -> Question ;

      You, She : Person ;
      LastNight, LastChristmas : Time ;

      MonthInt : Month -> Int -> Time ;
      October, November : Month ;

}