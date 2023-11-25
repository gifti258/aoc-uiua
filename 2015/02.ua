Input ← "02" &fras
ParseDims ← . @x≠ ⊜parse
Transform ← . @\n≠ ⊜ParseDims

SmallestFace ← .⍏⊏ 2↙

Surface ← .1↻ × /+ 2×
Extra ← SmallestFace /×
Paper ← ⊃(Surface|Extra) +
PartI ← ≡Paper /+

Perimeter ← SmallestFace /+ 2×
Bow ← /×
Ribbon ← ⊃(Perimeter|Bow) +
PartII ← ≡Ribbon /+

Input Transform ⊃(
  PartI
  ⊃(1598415≍)∘ ⍤
|
  PartII
  ⊃(3812909≍)∘ ⍤
)
