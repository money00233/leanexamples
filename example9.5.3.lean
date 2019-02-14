variable U : Type 
variables A B C : U -> Prop 
variable h1 : forall x, A x \/ B x
variable h2 : forall x, A x -> C x
variable h3 : forall x, B x -> C x 
example : forall x, C x :=
assume t,
have h4 : A t \/ B t, from h1 t,
have h5 : A t -> C t, from h2 t,
have h6 : B t -> C t, from h3 t,
show C t, from 
or.elim h4
    (assume hA : A t,
    show C t, from h5 hA)
    (assume hB : B t,
    show C t, from h6 hB)
