resource ResEng = {

param
  Number = Sg | Pl ;

oper

  Noun : Type = {s : Str} ; -- Inflection table

  Determiner : Type = {s : Str ; n : Number} ;
  mkDet : Str -> Number -> Determiner ;
  mkDet str num = {s = str ; n = num} ;

--- The old, just strings, going to change later

  mkPrep : Str -> {s : Str}  ;
  mkPrep str = {s = str} ;

  mkPron : Str -> {s : Str}  ;
  mkPron str = {s = str} ;

  mkN : Str -> {s : Str} ;
  mkN str = {s = str} ;

  mkA : Str -> {s : Str} ;
  mkA str = {s = str} ;

  mkV : Str -> {s : Str} ;
  mkV str = {s = str} ;

  mkV2 : Str -> {s : Str} ;
  mkV2 str = {s = str} ;

  mkAdv : Str -> {s : Str} ;
  mkAdv str = {s = str} ;

}