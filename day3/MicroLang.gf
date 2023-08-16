abstract MicroLang = {

-- a very minimal version of MiniGrammar + MiniLexicon, helping to get started

  flags startcat = Utt ;
-----------------------------------------------------
---------------- Grammar part -----------------------
-----------------------------------------------------

  cat

-- Common
    Utt ;    -- sentence, question, word...         e.g. "be quiet"

-- Cat
    S ;      -- declarative sentence                e.g. "she lives here"
    VP ;     -- verb phrase                         e.g. "lives here"
    Comp ;   -- complement of copula                e.g. "warm"
    AP ;     -- adjectival phrase                   e.g. "warm"
    CN ;     -- common noun (without determiner)    e.g. "red house"
    NP ;     -- noun phrase (subject or object)     e.g. "the red house"
    Det ;    -- determiner phrase                   e.g. "those"
    Prep ;   -- preposition, or just case           e.g. "in", dative
    V ;      -- one-place verb                      e.g. "sleep"
    V2 ;     -- two-place verb                      e.g. "love"
    A ;      -- one-place adjective                 e.g. "warm"
    N ;      -- common noun                         e.g. "house"
    Pron ;   -- personal pronoun                    e.g. "she"
    Adv ;    -- adverbial phrase                    e.g. "in the house"

  fun
-- Phrase
    UttS      : S  -> Utt ;         -- he walks
    UttNP     : NP -> Utt ;         -- he

-- Sentence
    PredVPS   : NP -> VP -> S ;             -- John walks --s shortcut even wrt MiniGrammar

-- Verb
    UseV      : V   -> VP ;             -- sleep
    ComplV2   : V2  -> NP -> VP ;       -- love it ---s
    UseComp   : Comp  -> VP ;           -- be small
    CompAP    : AP  -> Comp ;           -- small
    AdvVP     : VP -> Adv -> VP ;       -- sleep here

-- Noun
    DetCN     : Det -> CN -> NP ;       -- the man
    UsePron   : Pron -> NP ;            -- she
    this_Det   : Det ;                  -- this   ---s
    these_Det : Det ;                   -- these     ---s
    UseN      : N -> CN ;               -- house
    AdjCN     : AP -> CN -> CN ;        -- big house

-- Adjective
    PositA    : A  -> AP ;              -- warm

-- Adverb
    PrepNP    : Prep -> NP -> Adv ;     -- in the house

-- Structural
    in_Prep   : Prep ;
    on_Prep   : Prep ;
    with_Prep : Prep ;

    he_Pron   : Pron ;
    she_Pron  : Pron ;
    they_Pron : Pron ;


-----------------------------------------------------
---------------- Lexicon part -----------------------
-----------------------------------------------------

fun
  big_A : A ;
  bay_N : N ;
  buy_V2 : V2 ;
  come_V : V ;
  good_A : A ;
  go_V : V ;
  house_N : N ;
--  john_PN : PN ;
--  know_VS : VS ;
  fly_N : N ;
  live_V : V ;
  love_V2 : V2 ;
  music_N : N ;
  new_A : A ;
  now_Adv : Adv ;
  old_A : A ;
--  paris_PN : PN ;
  sleep_V : V ;
  tree_N : N ;
  wait_V2 : V2 ;
  water_N : N ;

}