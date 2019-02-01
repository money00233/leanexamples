variables A B : Prop
example : notA \/ not B :=
assume h : not (A /\ B),
assume h1 : A /\ B,
have h2 : false, from h h1
have h3 : A, from and.left h1
show not A, from h2 h3

