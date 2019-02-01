variables A B C D : Prop
variable hA : A
example (h : A \/ B) (h2 : A -> C) (h3 : B -> D) : (C \/ D) :=
have hC : C, from h2 hA,
show C \/ D, from or.inl hC 