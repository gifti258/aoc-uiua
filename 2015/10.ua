Input ← "10" &fras
Transform ← ¯1↘ @0-

LookAndSay ← ⍥(. ⊜(⊃⊢⧻ ⊟) ♭) ⧻

PartI ← 40 LookAndSay
PartII ← 50 LookAndSay

Input Transform ⊃(
  PartI
  ⊃(252594≍)∘ ⍤
|
  # takes too long
  # PartII
  # ⊃(3579328≍)∘ ⍤
)
