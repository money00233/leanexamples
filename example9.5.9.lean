variables (U : Type) ( x y : U)
variables R : U → U → Prop 
example : (∃ x,∀ y,R x y) → ∀ y, ∃ x,R x y :=
assume h1 : ∃ x,∀ y,R x y,
exists.elim h1 $
assume t (h2: ∀ y, R t y),
assume u,
have h3 : R t u, from h2 u,
show ∃ x, R x u, from exists.intro t h3
