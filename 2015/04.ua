Input ← "04" &fras ¯1↘

Bits ← ⋯ ⬚0(32↙)
Add ← ∩⍘⋯ + ∵Bits

InitialState ← 16⇡ ¯1_2↯ ≡⇌ ♭ ⊃⇌∘ ⊂ ⋯ 4_32↯

PadZeroes ← 128:⊂ .⧻ ⍜(56- 64÷)⌈ ⬚0↙ ⋯ ♭
PadLength ← ⧻ 8× ⋯ ⬚0(64↙)
PrepareMessage ← utf ⊃(PadLength|PadZeroes) ⊂ ¯1_1_16_32↯

S ← [7_12_17_22 5_9_14_20 4_11_16_23 6_10_15_21] ≡(4↯) ♭
K ← 64⇡ 1+ ○ ⌵ 2 32ⁿ × ⌊ ∵Bits
G ← 64⇡ 1_5_3_7 ,16÷⌊ 0_1_5_0 , ∩⊏ ⊙× + 16◿

# st i -- F(B C D)
F ← ⊓(|1.3 1↘ /∘|16÷⌊) (⊙: ,¬ ∩↧ ↥|: ,¬ ∩↧ ↥|≠≠|⊙: ¬ ↥ ≠)

# st m i -- b, Si, Ki, Mi, F | st -- st
Operation ← (
  ⊃(⋅⋅∘ 1⊡|⊙S ⊡|⊙K ⊡|⊙(∘G) ⊡⊡|⟜F|⋅⋅∘)
  ⍜⊢(Add Add Add :¯↻ Add) ¯1↻
)
# st m i -- st
HandleBlock ← ⊙⊙. ∧Operation Add
MDFive ← ⊙InitialState PrepareMessage 64⇡¤ ∧HandleBlock 16_8↯ ≡⇌ ♭

Test! ← ⊃(MDFive ^0 4×↙ 0= /↧)∘ ⍤
Part! ← 1 ⍢(,, :$"__" Test!^0¬|1+) ⟜∘

PartI ← Part!5
PartII ← Part!6

0⍥(
  Input ⊃(
    PartI
    ⊃(346386≍)∘ ⍤
  |
    PartII
    ⊃(9958218≍)∘ ⍤
  )
)

"abcdef609043" Test!5
"pqrstuv1048970" Test!5
"iwrupvqb346386" Test!5
"iwrupvqb9958218" Test!6
