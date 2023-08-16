resource ResEng = {

oper

  Determiner : Type = {s : Str} ;
  Noun : Type = {s : Str} ;

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