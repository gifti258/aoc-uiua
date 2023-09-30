parsephrase ← {"turn on" "toggle" "turn off"} ∺(|2 ! ⌕⊢) 1⊗
parsecoords ← . @\0- ∵(. 48≥ ∶ 57≤ ↧) ⊜parse
parseinstr ← . parsecoords ∶ parsephrase ⊂

coordtoarray ← 2_2↯ ⍘⊟ ,, -⌵1+ 1∶↯ ([1000.]↙)0⍛ ↷ ∵↧ ¯↻
foldbody ← ∶ . 1↘ coordtoarray ∶ ⊢

"06" &fras
. @\n≠ ⊜parseinstr
0 [1000.]↯
,,

∧(foldbody ↥_≠_(¬↧)!) ♭ /+
377891= .⍤

∧(foldbody +_(2×+)_(-0↥)!) ♭ /+
14110788= .⍤
