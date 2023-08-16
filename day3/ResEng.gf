resource ResEng = {

param
  Number = Sg | Pl ;

oper

  Noun : Type = {s : Number => Str} ; -- Inflection table
  mkN : Str -> Noun ;
  mkN str = {s = table {
                   Sg => str ;
                   Pl => addS str }
            } ;

  addS : Str -> Str ;
  addS word = case word of {

    ---------------------------
    -- fly~flies but bay~bays
    b + #vowel + "y" => word + "s" ;
    fl + "y" => fl + "ies" ; -- We bind any string before "y" into variable, call it fl, reuse it on the RHS

    ---------------------------
    -- match~matches, fox~foxes
    _ + #sibilant => word + "es" ;
     -- equivalent to above
     -- fo + x@#sibilant => fo + x + "es" ;
    _ + "e" =>  word + "s" ;
    _ + #vowel => word + "es" ;
    ---------------------------
    -- Otherwise: just add s
    _ => word + "s" -- Underscore matches anything, doesn't bind into a variable
    } ;

  sibilant : pattern Str = #("x"|"s"|"sh"|"ch") ;
  vowel : pattern Str = #("a"|"e"|"i"|"o"|"u") ;

--------------------------------------

param
  VerbAgrPerson = P3 | NonP3 ;

oper

  Verb : Type = {s : VerbAgrPerson => Str} ; -- Inflection table

  mkV : Str -> Verb ;
  mkV str = {s = table {
                   NonP3 => str ;
                   P3 => addS str }
            } ;

  mkV2 = mkV ;

  copula : VerbAgrPerson => Str ;
  copula = table {
              P3 => "is";
              NonP3 => "are"
            } ;

  copulaCompl : Str -> (VerbAgrPerson => Str) ;
  copulaCompl str = table {
              P3 => "is" ++ str ;
              NonP3 => "are" ++ str
            } ;

--------------------------------------
-- Dets, Prons, NPs

  Determiner : Type = {s : Str ; n : Number} ;
  mkDet : Str -> Number -> Determiner ;
  mkDet str num = {s = str ; n = num} ;

  NounPhrase : Type = {s : Str ; p : VerbAgrPerson} ;

  getVerbAgr : Number -> VerbAgrPerson ;
  getVerbAgr n = case n of {
    Sg => P3 ;
    Pl => NonP3
  } ;

-- remember, lincat Pron = NounPhrase
  mkPron : Str -> Number -> NounPhrase  ;
  mkPron str num = {s = str ; p = getVerbAgr num} ;

--------------------------------------
--- The old, just strings, going to change later

  mkPrep : Str -> {s : Str}  ;
  mkPrep str = {s = str} ;

  mkA : Str -> {s : Str} ;
  mkA str = {s = str} ;

  mkAdv : Str -> {s : Str} ;
  mkAdv str = {s = str} ;

}