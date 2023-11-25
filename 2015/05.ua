Input ← "05" &fras
Parse ← . @\n≠ ⊜∘

ThreeVowels ← "aeiou" :∊ /+ 3≥
DoubleLetter ← 2◫ ⍉ ⍘⊟ = /↥
NoForbidden ← 2◫ "abcdpqxy" 4_2↯ ∊ /↥ ¬

NiceI ← [⊃(ThreeVowels|DoubleLetter|NoForbidden)] /↧

TwoPairs ← 2◫ ⊃(⧻⇡)⊛ ⊕(.⊞- ♭ 1> /↥) /↥
Sandwich ← 3◫ ≡(.⇌ ∩⊢ =) /↥

NiceII ← ⊃(TwoPairs|Sandwich) ↧

Part! ← ≡^1/+
PartI ← Part!NiceI
PartII ← Part!NiceII

Input Parse ⊃(
  PartI
  ⊃(236≍)∘ ⍤
|
  PartII
  ⊃(51≍)∘ ⍤
)
