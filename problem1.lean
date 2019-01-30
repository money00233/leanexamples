variables A B  : Prop
example : A ∧ (A -> B) -> B :=
assume h1 : A /\ (A -> B),
have h2 : A, from and.left h1,
have h3 : A -> B, from and.right h1,
show B, from   h3 h2 
