universe u
def double (x : nat) : nat := x + x
def do_twice (f : nat -> nat) (x : nat) : nat := f (f x)
#check do_twice double
#reduce do_twice double 2 
def Do_Twice (f :nat -> nat) (g : nat ) : nat := f ( g)
def do_thrice (f : nat -> nat) (x : nat) : nat := f (f (f x))
#check do_thrice double 
#reduce do_thrice double 2
def Do_Twice2 {alpha : Type u} (g : alpha -> alpha) (f : alpha) : alpha := g (g (f))
#check Do_Twice2
#check Do_Twice2 do_twice
#check Do_Twice2 do_thrice
#reduce Do_Twice2 do_twice double 3
#reduce Do_Twice2 do_thrice double 2
#check Do_Twice2 Do_Twice2
#reduce Do_Twice2 Do_Twice2 double 2
#check Do_Twice do_twice double 2
