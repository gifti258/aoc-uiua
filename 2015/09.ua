Input ← "09" &fras
Parse ← . ⊃(@0≥|@9≤) ↧ ⊜parse
Transform ← .⧻ 2× √⌈ ⇡⇌⊚ ⬚0(⊕(0⊂⇌) ≡⇌ .⍉+)

# n N -- d
LehmerCode ← ⊙[0] 2 ⍢(, 0>|⊃(÷⌊|◿|1+) ⊙(: ⊙⊂)) ⋅⋅∘ ⬚0(:¯↙)
# n d -- σ
Permutation ← ⊙⊓[]⇡ ∧(⊃⊡(⍜↻(1↘)) ⊙(:⊂)) ⋅∘

Part!! ← ⊙^0 ⊃¤⧻ ⊃.(⇡ 1+ /× ⇡) ∧(LehmerCode Permutation 2◫ ⊡ /+ ^2)

PartI ← Part!!∞↧
PartII ← Part!!0↥

Input Parse Transform ⊃(
  PartI
  ⊃(141≍)∘ ⍤
|
  PartII
  ⊃(736≍)∘ ⍤
)
