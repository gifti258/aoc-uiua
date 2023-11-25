Input ← "06" &fras
ParseLines! ← . @\n≠ ⊜^1
ParseInstrs ← ParseLines!(¤ "nfg" ≡(@o⊂ ⌕ /↥) ⊚⊢)
ParseCoords ← ParseLines!(⊃(∘|@0≥|@9≤) ↧ ⊜parse)
Transform ← ⊃(ParseCoords|ParseInstrs)

LightMatrix ← 2_2↯ ⍘⊟ ⊃(- 1+ ⊙1↯ ⬚0([1000.]↙))∘ ¯↻
Part! ← ∧(⊙LightMatrix ^3) ♭/+
PartI ← Part!(↥|¬↧|≠)
PartII ← Part!(+|-0↥|2×+)

0 [1000.]↯ Input Transform ⊃(
  PartI
  ⊃(377891≍)∘ ⍤
|
  PartII
  ⊃(14110788≍)∘ ⍤
)
