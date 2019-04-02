open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
example : (∃ x, r -> p x) ↔  (r -> ∃ x, p x) :=
iff.intro
(assume h1 :  ∃ x, r -> p x,
exists.elim h1 $
assume y(h2 : r -> p y),
assume r,
have h3 : p y,from h2 r,
show (∃ x, p x), from exists.intro y h3)
(assume h : (r → ∃ x, p x),
        show (∃ x, r → p x), from
        by_cases
            (assume hr : r,
                have h2 : ∃ x, p x, from h hr,
                match h2 with ⟨w, (hw)⟩ :=
                    ⟨w, (λ f, hw)⟩
                end)
            (assume hr' : ¬r,
                ⟨a, (λ hr, absurd hr hr')⟩))

