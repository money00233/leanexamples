variables A B : Prop
example : A -> not( not A /\ B) :=
assume h1 : A,
assume h2 : not A /\ B,
have h3 : not A, from and.left h2,
show false, from h3 h1
