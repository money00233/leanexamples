variable U : Type
variables A B C : U -> Prop 
example (h1 : ∃ x, A x /\ B x) (h2 : forall x, B x -> C x) : ∃ x, A x /\ C x :=
exists.elim h1 $
assume y (h3 : A y /\ B y),
have h4 : B y -> C y, from h2 y,
have h5 : B y, from and.right h3,
have h6 : C y, from h4 h5,
have h7 : A y, from and.left h3,
have h8 : A y /\ C y, from and.intro h7 h6,
show ∃ x, A x /\ C x, from exists.intro y h8
