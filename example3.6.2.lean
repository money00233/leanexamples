variables A B C : Prop
variable hA : A 
variable hB : B
theorem and_ : ((A -> C) /\ (B -> not C)) -> not(A /\ B) :=
assume h1 : (A -> C) /\ (B -> not C),
show not(A /\ B), from
    (assume h7 : A /\ B, 
have h3 : A -> C, from and.left h1,
have h4 : C, from h3 hA,
have h6 : B -> not C, from and.right h1,
have h5 : not C, from h6 hB,
show false, from h5 h4)