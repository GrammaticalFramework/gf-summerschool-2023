--# -path=.

concrete MicroLangEng of MicroLang =
open ResEng in
 {

-- a very minimal concrete syntax: everything is just {s : Str}

-----------------------------------------------------
---------------- Grammar part -----------------------
-----------------------------------------------------

  lincat
-- Common
    Utt,    -- sentence, question, word...         e.g. "be quiet"

-- Cat
    S,      -- declarative sentence                e.g. "she lives here"
    VP,     -- verb phrase                         e.g. "lives here"
    Comp,   -- complement of copula                e.g. "warm"
    AP,     -- adjectival phrase                   e.g. "warm"
    NP,     -- noun phrase (subject or object)     e.g. "the red house"
    Prep,   -- preposition, or just case           e.g. "in", dative
    V,      -- one-place verb                      e.g. "sleep"
    V2,     -- two-place verb                      e.g. "love"
    A,      -- one-place adjective                 e.g. "warm"
    Pron,   -- personal pronoun                    e.g. "she"
    Adv     -- adverbial phrase                    e.g. "in the house"
     = {s : Str} ;

 --- Start by separating out the nouny bits
 --- Goal 1: Number agreement
    CN,     -- common noun (without determiner)    e.g. "red house"
    N = Noun ;     -- common noun                         e.g. "house"
    Det = Determiner ;  -- determiner phrase                   e.g. "those"
  lin
-- Phrase
    -- : S  -> Utt ;         -- he walks
    UttS s = s ;

    -- : NP -> Utt ;         -- he
    UttNP np = np ;

-- Sentence
    -- : NP -> VP -> S ;             -- John walks
    PredVPS np vp = {s = np.s ++ vp.s} ;

-- Verb
    -- : V   -> VP ;             -- sleep
    UseV v = v ;

    -- : V2  -> NP -> VP ;       -- love it
    ComplV2 v2 np = {s = v2.s ++ np.s} ;

    -- : Comp  -> VP ;           -- be small
    UseComp comp = {s = "be" ++ comp.s} ;

    -- : AP  -> Comp ;           -- small
    CompAP ap = ap ;

    -- : VP -> Adv -> VP ;       -- sleep here
    AdvVP vp adv = {s = vp.s ++ adv.s} ;

-- Noun
    -- : Det -> CN -> NP ;       -- the man
    DetCN det cn = {
      s = det.s ++ cn.s ! det.n ;
    } ;

    -- : Pron -> NP ;            -- she
    UsePron pron = pron ;

    -- : Det ;                   -- definite singular   ---s
    this_Det = mkDet "this" Sg ;

    -- : Det ;                   -- definite plural     ---s
    these_Det = mkDet "these" Pl ;

    -- : N -> CN ;               -- house
    UseN n = n ;

    -- : AP -> CN -> CN ;        -- big house
    AdjCN ap cn = {
      s = table {num => ap.s ++ cn.s ! num} ;
    } ;

-- Adjective
    -- : A  -> AP ;              -- warm
    PositA a = a ;

-- Adverb
    -- : Prep -> NP -> Adv ;     -- in the house
    PrepNP prep np = {s = prep.s ++ np.s} ;

-- Structural
    -- : Prep ;
    in_Prep = mkPrep "in" ;
    on_Prep = mkPrep "on" ;
    with_Prep = mkPrep "with" ;

    he_Pron   = mkPron "he"   ;
    she_Pron  = mkPron "she"  ;
    they_Pron = mkPron "they" ;


-----------------------------------------------------
---------------- Lexicon part -----------------------
-----------------------------------------------------


lin
  big_A = mkA "big" ;
  bay_N = mkN "bay" ;
  buy_V2  = mkV2 "buy" ;
  come_V = mkV "come" ;
  good_A = mkA "good" ;
  go_V = mkV "go" ;
  house_N = mkN "house" ;
--  john_PN : PN ;
--  know_VS : VS ;
  fly_N = mkN "fly" ;
  live_V = mkV "live" ;
  love_V2  = mkV2 "love" ;
  music_N = mkN "music" ;
  new_A = mkA "new" ;
  now_Adv = mkAdv "now" ;
  old_A = mkA "old" ;
--  paris_PN : PN ;
  sleep_V = mkV "sleep" ;
  tree_N = mkN "tree" ;
  wait_V2 = mkV2 "wait" ;
  water_N = mkN "water" ;

}
