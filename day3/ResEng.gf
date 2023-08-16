resource ResEng = {

param
  Number = Sg | Pl ;

oper

  Noun : Type = {s : Number => Str} ; -- Inflection table
  mkN : Str -> Noun ;
  mkN str = {s = table {
                   Sg => str ;
                   Pl => addPlural str }
            } ;

  addPlural : Str -> Str ;
  addPlural word = case word of {

    ---------------------------
    -- fly~flies but bay~bays
    b + #vowel + "y" => word + "s" ;
    fl + "y" => fl + "ies" ; -- We bind any string before "y" into variable, call it fl, reuse it on the RHS

    ---------------------------
    -- match~matches, fox~foxes
    _ + #sibilant => word + "es" ;
     -- equivalent to above
     -- fo + x@#sibilant => fo + x + "es" ;

    ---------------------------
    -- Otherwise: just add s
    _ => word + "s" -- Underscore matches anything, doesn't bind into a variable
    } ;

  sibilant : pattern Str = #("x"|"s"|"sh"|"ch") ;
  vowel : pattern Str = #("a"|"e"|"i"|"o"|"u") ;


  Determiner : Type = {s : Str ; n : Number} ;
  mkDet : Str -> Number -> Determiner ;
  mkDet str num = {s = str ; n = num} ;

--- The old, just strings, going to change later

  mkPrep : Str -> {s : Str}  ;
  mkPrep str = {s = str} ;

  mkPron : Str -> {s : Str}  ;
  mkPron str = {s = str} ;


  mkA : Str -> {s : Str} ;
  mkA str = {s = str} ;

  mkV : Str -> {s : Str} ;
  mkV str = {s = str} ;

  mkV2 : Str -> {s : Str} ;
  mkV2 str = {s = str} ;

  mkAdv : Str -> {s : Str} ;
  mkAdv str = {s = str} ;

}