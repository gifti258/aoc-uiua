Input ← "18" &fras
Parse ← . @\n≠ ⊜(@#=)

Neighbors ← ⊃(¤ 3⇡ 1- . ⊠⊟ 1☇ ≡⬚0↻ /+)∘ -

StuckLights ← . .≠ 1 2_2↯ ⬚0+ 1_1↻ ↥

Part!! ← 100⍥(
  ^1 ⊃∘Neighbors ⊃(2,3 ∩= ↥ ↧|⊓(0=|3=) ↧) ↥
) ^1 ♭/+

PartI ← Part!!∘∘
PartII ← Part!!StuckLights StuckLights

Input Parse ⊃(
  PartI
  ⊃(1061≍)∘ ⍤
|
  PartII
  ⊃(1006≍)∘ ⍤
)
