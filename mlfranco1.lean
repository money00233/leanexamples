variables p q r : Prop
variable ha : not p -> r
variable hr : not p
example : (not p \/ r) /\ (p \/ q) -> (q \/ r) :=
assume h1 : (not p \/ r) /\ (p \/ q),
    have h2 : not p \/ r, from and.left h1,
    have h3 : r, from ha hr,
    show q \/ r, from or.inr h3
