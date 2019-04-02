open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
example : (∃ x, p x) ↔ ¬ (∀ x, ¬ p x) :=
iff.intro
      (assume h: ∃ x, p x,
      exists.elim h $
      assume y(hp : p y),
        assume hn': ∀ x, ¬p x,
        have ht : ¬ p y, from hn' y,
        show false, from ht hp)
      (assume h: ¬(∀ x, ¬p x),
      by_contradiction
        (assume hex : ¬(∃ x, p x),
        have hf : ∀ x, ¬p x, from forall_not_of_not_exists hex,
show false, from h hf))
