variable A : Prop
variable hA : A 
variable hB : not A  
theorem ab_ : not (A <-> not A) :=
assume h1 : A <-> not A,    
    have h2 : A, from iff.elim_right h1 hB,
    have h3 : not A, from iff.elim_left h1 hA,
show false, from h3 h2

variables p q : Prop
#check ab_ p 