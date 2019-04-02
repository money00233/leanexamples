open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
variable z : Prop
 theorem dne {z: Prop} (h: ¬¬z): z :=
  by_contradiction
    (assume h1 : not z,
    show false, from h h1)
example : (∀ x, p x) ↔ ¬ (∃ x, ¬ p x) :=
    iff.intro
      (assume h: ∀ x, p x,
      assume h2 : ∃ x, ¬p x,
      match h2 with ⟨x, hnp⟩ :=
        show false, from hnp (h x)
      end)
      (assume h: ¬(∃ x, ¬p x),
      have h1: ∀ x, ¬¬p x, from forall_not_of_not_exists h,
      show ∀ x, p x, from 
      assume x,
        show p x, from dne (h1 x))
