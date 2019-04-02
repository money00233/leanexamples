open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
example : (∀ x, p x → r) ↔ (∃ x, p x) → r :=
iff.intro
    (assume h : (∀ x, p x → r),
        show (∃ x, p x) → r, from
        (assume h2 : ∃ x, p x,
            show r, from
            match h2 with ⟨w, hw⟩ :=
                (h w) hw
            end))
    (assume h : (∃ x, p x) → r,
        show ∀ x, p x → r, from
        assume z : α,
        show p z → r, from
            (assume hpz : p z,
                have hh : ∃ x, p x, from exists.intro z hpz,
                show r, from h hh))
