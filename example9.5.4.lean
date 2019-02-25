open classical 
axiom not_iff_not_self ( P : Prop) : not (P <-> not P)
variable Person : Type 
variable shaves : Person -> Person -> Prop 
variable barber : Person 
variable hA : forall x, shaves barber x
variable h : forall x, shaves barber x <-> not (shaves x x)
variable hB : forall x, not (shaves x x)
example : false :=
have h1 : shaves barber barber <-> not (shaves barber barber), from h barber,
have h2 : shaves barber barber, from hA barber,
have h3 : not(shaves barber barber), from hB barber,
show false, from h3 h2












/-section 
variable U : Type

variables A B C : U → Prop

example : (¬ ∃ x, A x) → ∀ x, ¬ A x :=

assume h1: (¬ ∃ x, A x),
show ∀ x, ¬ A x,
from assume z,
assume h2: A z,
show false, from h1 (exists.intro z h2)
end -/