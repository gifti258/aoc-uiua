Input ← "08" &fras

Part! ← . @\n≠ ⊜(^1.2∩/+ + 2+) /+

EscapeSequences ← @\\= \(¬↧)
AsciiEscapes ← "\\x" ⌕
PartI ← ⊃(AsciiEscapes|EscapeSequences) ⊃(× 2×)∘

Quotes ← @" =
Backslashes ← @\\ =
PartII ← ⊃(Quotes|Backslashes)

Input ⊃(
  Part!PartI
  ⊃(1350≍)∘ ⍤
|
  Part!PartII
  ⊃(2085≍)∘ ⍤
)
