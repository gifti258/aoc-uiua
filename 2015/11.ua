Input ← "11" &fras ¯1↘

StrToNum ← /(26×+)
NumToStr ← ⊙[] ⍢(0≠|26 ⊃◿(÷⌊) ⊙⊂) ⋅∘

IncreasingStraight ← 3◫ ≡(2◫ ≡/- 1= /↧) /↥
NoConfusing ← "iol"@a- ∊ /↥¬
TwoPairs ← 2◫ . ⍉⍘⊟= ▽ ⊝⧻ 2≥
Valid ← [⊃(IncreasingStraight|NoConfusing|TwoPairs)] /↧

Next ← ⍜(@a-|StrToNum ⍢(1+ . NumToStr Valid ¬)∘ NumToStr)

PartI ← Input Next
PartII ← PartI Next

PartI ⊃("hxbxxyzz"≍)∘ ⍤
PartII ⊃("hxcaabcc"≍)∘ ⍤
