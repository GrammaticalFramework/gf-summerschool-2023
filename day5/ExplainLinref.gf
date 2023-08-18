abstract ExplainLinref = {
    flags startcat = MySimpleCat ;
    cat
        MySimpleCat ;
        MyComplexCat ;

    fun
        SimpleExample : MyComplexCat -> MySimpleCat ;
        ComplexExample : MyComplexCat ;
}