variable A : Type
variable f : A -> A 
variable P : A -> Prop 
variable h : forall x, P x -> P(f x)
variable ht : forall x, P x
example : forall y, P y -> P (f (f y)) :=
assume t,
show P t -> P (f (f t)), from
have h1 : P t -> P (f t), from h t,
have h2 : P (f t) -> P (f (f t)), from h (f t),
assume h3 : P t,
have h4 : P (f t), from h1 h3,
show  P (f (f t)), from h2 h4
