Input ← "07" &fras

# input -- vs ks
Transform ← . @\n≠ ⊜(. @ ≠ ⊜(⍣parse⟜∘ □) ⇌⊃(2↘ 1↻ □)⊢ ⊟) ⍉ ⍘⊟

# vs ks -- vs' vs* ks' ks*
SplitWires ← ⊙⊃∘≡(⊢⊔ type) , ∩(⊕□ ⬚([]□)(2↙) ⍘⊟ ∩⊔)

# vs' vs* ks' ks* -- vs' ks'
ReplaceKnown ← : ⊙(∧≡(⊙⊙⊔ ≡(⊙, = (⋅∘|⟜⊢)) □))

CanCompute ← 1↘ ⊐≡type ⊃(⧻0>|/↥¬) ↧

LookupInstr ← ⊙{"NOT" "AND" "OR" "LSHIFT" "RSHIFT"} ⊗

UnaryOp! ← ⍜(⊔⊢ ⊔⋯|⬚0(16↙) ^1)
BinaryOp! ← ⍜(⊔ ≡⊔ ⋯)/^2
ShiftOp!! ← ⍜(⊔ ≡⊔|⍘⊟ ⍜⋯⬚0(16↙ :^1↘ 16^1↙))

NOT ← UnaryOp!¬
AND ← BinaryOp!↧
OR ← BinaryOp!↥
LSHIFT ← ShiftOp!!¯¯
RSHIFT ← ShiftOp!!∘∘

ExecuteInstr ← (NOT|AND|OR|LSHIFT|RSHIFT)

ComputeSignal ← ⊃(1↘)⊢ LookupInstr ExecuteInstr

# vs ks -- vs' ks
ComputeSignals ← ⊙≡⍜⊔(⊃∘CanCompute (∘|ComputeSignal))

# vs ks -- a
Assemble ← (
  SplitWires ⍢("a"□∊¬|ReplaceKnown ComputeSignals SplitWires)
  ⟜("a"□⊗) ⊡ ⟜(⊢⊔)
)

Input Transform ,,

Assemble
.⊃(956≍)∘ ⍤

⊃(∘|⋅⊙∘|⋅∘) ⊙("b"□⊗ ⍜⊡⋅({∘}□))
Assemble
⊃(40149≍)∘ ⍤
