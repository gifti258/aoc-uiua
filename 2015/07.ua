parseints ← ∵(|1 ⍣(;)(|1 !parse ⋯ ⍛(32↙)0□))
parseconn ← . @ ≠ ⊜□ . ⍜(2↘ parseints)⇌ □ ∶ ⇌⊢ ⊟

execinstr ← (
  ∶{"AND" "LSHIFT" "NOT" "OR" "RSHIFT"}∶⊗
  [(⍘⊟ ↧ □)
   (⍘⊟ ∷! ∶ ⍘⋯ ¯↘ ⍛(¯32↙)0□)
   (¬)
   (⍘⊟ ↥ □)
   (⍘⊟ ∷! ∶ ⍘⋯ ↘ ⍛(32↙)0□)]!
  .⊂ 1↙
)

checkinstr ← . ⧻1= (|1 
  . ¯1↻⇌
  . ⊢
  ∶ 1↘
  . ∵(|1 ! type 0=) /↧ (;)_(execinstr∶)! ;
)_·!

assemble ← ∞⍥(
  . ≡(|1 1⊡! . ⧻ 1= ∶ ⊢! type 0= ↧) ⊕□ ⍘⊟ ∷!
  , "a"□∊ . /↥ ·_(1⎋)! ;
  ∧(∺(|2 ⍜(→∶ ∺(∶ ⍘⊟ ∶ !⊢ ∶→∶, ≅ ∶_·!;))(⍘⊟∶!)))
  ≡(⍜(checkinstr)(⍘⊟∶!))
) ∶; ▽ ⊢1⊡ . ⊢! ⍘⋯

"07" &fras
. @\n≠ ⊜parseconn
.

assemble
956= .⍤

∶∺(⍘⊟ .→(∶→∶) "b"□≅ ∶_·!; ∶⊟)
assemble
40149= .⍤
;
