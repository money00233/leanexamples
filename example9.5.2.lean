variable U : Type
variables A B : U -> Prop 
example : (forall x, A x /\ B x) -> forall x, A x :=
assume h1 : forall x, A x /\ B x,
assume t,
have h2 : A t /\ B t, from h1 t,
show A t, from and.left h2