
variable p : Prop
example : ¬(p <-> ¬p) :=
assume h : (p <-> ¬p),
have h1 : not p, from 
    assume h2 : p, 
    show false, from (iff.mp h h2) h2,
show false, from h1 (iff.mpr h h1)