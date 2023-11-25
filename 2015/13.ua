Input ← "13" &fras
ParseAbs ← . ⊃(@0≥|@9≤) ↧ ⊜parse
ParseSign ← "gain" ,"lose" ∩⌕ ⊃-+ ▽
Parse ← ⊃(ParseAbs|ParseSign) ×
Transform ← ⊃∘(⧻ √⌈) ⊃(1-). ⊓(⊂↯)⇡ ≡⍜↻(0⊂) .⍉+

# n N -- d
LehmerCode ← ⊙[0] 2 ⍢(, 0>|⊃(÷⌊|◿|1+) ⊙(: ⊙⊂)) ⋅⋅∘ ⬚0(:¯↙)

# n d -- σ
Permutation ← ⊙⊓[]⇡ ∧(⊃⊡(⍜↻(1↘)) ⊙(:⊂)) ⋅∘

Part ← (
  ⊙(∞¯) ⊃¤⧻ 1- ⊃.(⇡ 1+ /× ⇡)
  ∧(LehmerCode Permutation 1+ 0⊂ 0:⊂ 2◫ ⊡ /+ ↥)
)

PartI ← Part
PartII ← 0⊂ ≡(0⊂) Part

Input Parse Transform ⊃(
  PartI
  ⊃(709≍)∘ ⍤
|
  PartII
  ⊃(668≍)∘ ⍤
)
