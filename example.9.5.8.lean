
variable U : Type 
variable A : U -> Prop 
section
example : (¬ ∃ x, A x) → ∀ x, ¬ A x :=
assume h1: ¬ ∃ x, A x,
show ∀ x, ¬ A x,from 
assume t,
assume h2: A t,
show false, from h1 (exists.intro t h2)
end 
section 
example : (∀ x, ¬ A x) → ¬ ∃ x, A x :=
assume h1: ∀ x, ¬ A x,
assume h2: ∃ x, A x,
exists.elim h2 $
assume t (h3: A t),
show false, from (h1 t) h3
end 