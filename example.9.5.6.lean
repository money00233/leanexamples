variable U : Type 
variables A B : U -> Prop 
variable h1 : forall x, A x -> B x 
variable h2 : ∃ x, A x 
example : ∃ x, B x :=
exists.elim h2 $
assume y (h4 : A y),
have h5 : A y -> B y, from h1 y,
have h6 : B y, from h5 h4,
show ∃ x, B x, from exists.intro y h6
