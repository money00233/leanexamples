open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
example : r → (∃ x : α, r) := 
assume (h1 : r),
show ∃ x : α, r, from exists.intro a h1
