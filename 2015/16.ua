Input ← "16" &fras
ParsePair ← . @:≠ . ¯1↻ ↧ ⊜□ ⊐⍜(⇌⊢)parse
ParseLine ← . @:⊗ 2+ ↘ . @,≠ . ¯1↻ ↧ ⊜ParsePair
Parse ← . @\n≠ ⊜ParseLine

Readings ← [
  {"children" 3}
  {"cats" 7}
  {"samoyeds" 2}
  {"pomeranians" 3}
  {"akitas" 0}
  {"vizslas" 0}
  {"goldfish" 5}
  {"trees" 3}
  {"cars" 2}
  {"perfumes" 1}
]

Part! ← ⍜(1☇)⊠(∩⍘⊟ ⊃(⋅⊙⊙∘|⟜=) (⋅⋅⋅1|: ^3)) ≡(♭/↧) 1⊗ 1+

PartI ← Part!⋅=
PartII ← Part!(Readings⍉⊢ :⊗ (=|<|=|>|=|=|>|<|=|=))

Readings Input Parse ⊃(
  PartI
  ⊃(213≍)∘ ⍤
|
  PartII
  ⊃(323≍)∘ ⍤
)
