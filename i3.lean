open classical 
variables (α : Type) (p q : α -> Prop)
variable a : α 
variable r : Prop
example : (∃ x, p x ∧ r) ↔ (∃ x, p x) ∧ r := 
iff.intro 
    (assume hA : (∃ x, p x ∧ r),
        exists.elim hA $
            assume y (h1 : p y ∧ r),
            have hr : r, from and.right h1,
            have h5 : p y, from and.left h1,
            have h6 : ∃ x, p x, from exists.intro y h5, 
            show (∃ x, p x) ∧ r, from and.intro h6 hr)
    (assume hB : (∃ x, p x) ∧ r,
        have h1 : (∃ x, p x),from and.left hB,
        have h4 : r, from and.right hB,
        exists.elim h1 $
        assume y (h2 : p y),
        have h5 : p y ∧ r, from and.intro h2 h4,
        show ∃ x, p x ∧ r, from exists.intro y h5)
