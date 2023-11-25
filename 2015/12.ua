Input ← "12" &fras ¯1↘

Digit ← ⊃(@-=|@0≥|@9≤) ↧↥
PartI ← . Digit ⊜parse /+

Letter ← ⊃(@a≥|@z≤) ↧
# accum-stack str-accum -- n-accum' str-accum'
Incr! ← ⍣parse⋅⋅0 :⍜⊢+ ^1 ""
PartII ← ⊙([] [0] "") ∧(
  . ⊃(Digit|Letter) ↥ (
    # else
    "[{:\",}]" :⊗ (
      # opening bracket: start array
      ⊙⊙(0⊂) # array context
    |
      # opening brace: start object
      ⊙⊙(1⊂) # object context
      ⊙(0⊂)  # push new accum
    |
      # colon: start value
      ⋅"" # discard key
    |
      # quotation mark
      ⊃(⊙⊙∘|⋅⋅⊢) (⋅""|"red"≍ (∘|⍜⊢⋅∞) "") # invalidate accum
    |
      # comma: close current context
      Incr!∘
    |
      # closing brace: close object
      Incr!(⊃⊢(1↘) ,∞= (⍜⊢+|⟜∘))
      ⊙⊙(1↘)
    |
      # closing bracket: close array
      Incr!∘
      ⊙⊙(1↘)
    )
  |
    # digit/letter?
    :⊂
  )
) ⋅⟜⊢

Input ⊃(
  PartI
  ⊃(156366≍)∘ ⍤
|
  PartII
  ⊃(96852≍)∘ ⍤
)
