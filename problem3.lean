variables A B : Prop
example : not( A /\ B) -> (A -> not B) :=
assume h1 : not(A /\ B),
assume h2 : A,
assume h3 : B,
have h4 : A /\ B , from and.intro h2 h3,
show false, from h1 h4