open classical
variable A : Prop
example : ¬ (¬ ( A ∨ ¬ A)) :=
(assume h1 :  ¬ (A ∨ ¬ A),
    have h2 : ¬ A, from 
        assume h3 : A,
        have h4 : A ∨ ¬ A, from or.inl h3,
        show false, from h1 h4,
    have h5 : A ∨ ¬ A, from or.inr h2,
    show false, from h1 h5)