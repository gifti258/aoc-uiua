bitarray ← ⋯ ⍛(32↙)0

S ← [7 12 17 22 5 9 14 20 4 11 16 23 6 10 15 21]
K ← 64⇡ 1+ ○ ⌵ 2 32ⁿ × ⌊ ∵bitarray

A ← 1732584193 bitarray
B ← 4023233417 bitarray
C ← 2562383102 bitarray
D ← 271733878 bitarray

F ← [(→(∶.¬)↧→↧↥)
     (∶→(.¬)↧→↧↥)
     (≠ ≠)
     (¬→∶↥≠)]

G ← [1_0 5_1 3_5 7_0]

zeropad ← 128∶⊂ .⧻ 56∶- 0∶↯ ∶⊂
lenpad ← ⧻ 8× ⍜(⍛(64↙)0 8_8↯)⋯ ∶⊂
M ← @\0- . zeropad ∶ lenpad ⋯ 64_4_8↯ ≡(♭)

corr ← .0< ·_(⌵2 32ⁿ∶-)!
add ← ∷⍘⋯ + corr ⋯ ⍛(32↙)0

mdfive ← (
  M A∶ D C B A 0
  64⍥(
    [0 4 3 2 1 0 5 0 2 0 4 2 3 5]⇵
    16÷⌊ F∶⊡ ! add # A+F(D C B)
    →(. →(16÷⌊ G∶⊡ ⍘⊟) ×+16◿ ⊡) add # +Mg
    , K∶⊡ add # +Ki
    ∶ . 4◿ ∶ 16÷⌊ 4× + S∶⊡ ¯↻ # <<s
    add # +B
    ∶→∶ 1+
  )
  [1 6]⇵ add 4_8↯ ⍜♭⇌
)

answer ← (|1 
  4×∶ 0 ∞⍥(
    1+ ,,∶$"__" mdfive
    [3 0 1 2 3]⇵↙ 0=/↧ ·_(1⎋)!
  )→(;;)
)

0⍥(
  "04" &fras
  ⍜(1↘)⇌
  .

  5 answer
  346386= .⍤

  6 answer
  9958218= .⍤
)

test ← 4×∶ mdfive ∶↙ 0=/↧ .⍤

"abcdef609043" 5 test
"pqrstuv1048970" 5 test
"iwrupvqb346386" 5 test
"iwrupvqb9958218" 6 test
