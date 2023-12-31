concrete ExplainLinrefCnc of ExplainLinref = {

    -- Following naming convention from
    -- https://inariksit.github.io/gf/2018/08/28/gf-gotchas.html#my-naming-scheme-for-lincats-and-opers
    lincat
        MySimpleCat = {s : Str} ;
        MyComplexCat = LinMyComplexCat ;

    linref
        MyComplexCat = linMyComplexCat' Red ;

    param
       FavColour = Red | Blue | Green ;
       FavFood = Lentils | Beans ;

    oper
        LinMyComplexCat : Type = {
            s : FavColour => Str ;
            f : FavFood ;
            postmod : Str ;
        } ;

        linMyComplexCat : LinMyComplexCat -> Str ;
        linMyComplexCat mcc = mcc.s ! Green ++ mcc.postmod ;

        linMyComplexCat' : FavColour -> LinMyComplexCat -> Str ;
        linMyComplexCat' c mcc = mcc.s ! c ++ mcc.postmod ;

    lin
        -- : MyComplexCat -> MySimpleCat ;
        SimpleExample mcc = {s = linMyComplexCat' Blue mcc} ;

        ComplexExample = {
            s = table {Blue => "blue" ;
                       Green => "green" ;
                       Red => "red"} ;
            f = Lentils ;
            postmod = "just some string" ;
        } ;

}