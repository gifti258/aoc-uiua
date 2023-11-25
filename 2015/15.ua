Input ← "15" &fras
Parse ← . @\n≠ ⊜(. ⊃(@-=|@0≥|@9≤) ↧↥ ⊜parse)

# n k -- n `1 k -- ((n k))
MultisetCoefficient ← ⊙¯1 [⊃(++|∘|⋅+)] ≡(⇡1+ /×) /(:÷)
# is imax -- is' imax
AdvanceIndices ← ⊃(⊙. ⍜⇌⊗ 1- ⍜↘(⊃⊢(⧻⊚) ∩(1+) ×))∘

Part! ← ⊙0 .⧻ 100 ⊃(⊚: 1-)MultisetCoefficient ⍥(
  ⊙⊃(⊏ /+ 0↥ ^1.2 (⋅∘|¯1↘ /× ↥))⊙∘ AdvanceIndices
) ⋅⋅⋅∘

PartI ← Part!(∘1)
PartII ← Part!(.⇌⊢ 500=)

Input Parse ⊃(
  PartI
  ⊃(18965440≍)∘ ⍤
|
  PartII
  ⊃(15862900≍)∘ ⍤
)
