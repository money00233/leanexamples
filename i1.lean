open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop 
example : (∃ x : α, r) → r :=
assume h1 : ∃ x : α, r, 
exists.elim h1 $
assume t,
assume α,
show r, from α 

