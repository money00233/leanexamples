variable U : Type
variables A B : U -> Prop 
example : (∃ x, A x) -> ∃  x, A x \/ B x :=
assume h1 : ∃ x, A x, 
exists.elim h1 $
assume y (h2 : A y),
have h3 : A y \/ B y, from or.inl h2,
show ∃ x, A x \/ B x, from exists.intro y h3
