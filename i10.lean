open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
example : (∃ x, p x → r) ↔ (∀ x, p x) → r :=
iff.intro
  (assume h1 : ∃ x, p x → r,
    assume h2 : ∀ x, p x,
    exists.elim h1 $
    assume y(hb : p y -> r),
    show r, from  hb (h2 y))
  (assume h1 : (∀ x, p x) → r,
    show ∃ x, p x → r, from
      by_cases
        (assume hp : ∀ x, p x, exists.intro a (λ h', h1 hp))
        (assume hp' : ¬ ∀ x, p x,
          by_contradiction
            (assume hex' : ¬ ∃ x, p x → r,
              have hp : ∀ x, p x, from
                assume x,
                by_contradiction
                  (assume hp' : ¬ p x,
                    have hex : ∃ x, p x → r, from exists.intro x 
                    (assume hp : p x, absurd hp hp'),
                    show false, from hex' hex),
              show false, from hp' hp)))
