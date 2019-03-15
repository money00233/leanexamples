open classical
variable A : Prop
theorem dne ( h: not ( not A )) : A :=
by_contradiction
    (assume h1 : not A,
        show false, from h h1)
-- My theorem to prove ¬ (¬ ( A ∨ ¬ A)) --
theorem notnot : ¬ (¬ ( A ∨ ¬ A)) :=
(assume h1 :  ¬ (A ∨ ¬ A),
    have h2 : ¬ A, from 
        assume h3 : A,
        have h4 : A ∨ ¬ A, from or.inl h3,
        show false, from h1 h4,
    have h5 : A ∨ ¬ A, from or.inr h2,
    show false, from h1 h5)        
example : A ∨ ¬ A :=
have hN : not ( not ( A ∨ not A)), from notnot(A),-- Got ¬ (¬ ( A ∨ ¬ A)) using my theorem --
show A ∨ ¬ A,from dne(A ∨ not A) hN