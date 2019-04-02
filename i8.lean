open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
variable z : Prop
theorem dne {z: Prop} (h: ¬¬z): z :=
  by_contradiction
    (assume h1 : not z,
    show false, from h h1)
example : (¬ ∀ x, p x) ↔  (∃ x, ¬ p x) :=
    iff.intro
      (assume h: ¬∀ x, p x,
      by_contradiction
        (assume h1 : ¬(∃ x, ¬p x),
        have h2 : ∀ x, ¬¬p x, from forall_not_of_not_exists h1,
        have h3 : ∀ x, p x, from 
        (assume x, dne (h2 x)),
        show false, from h h3))
      (assume h: ∃ x, ¬p x,
      exists.elim h $
      assume x(hx : ¬ p x),
        assume hno: ∀ x, p x,
        have h1 : p x, from hno x,
        show false,from hx h1 
      )
