def add1 (c : prod nat nat) : nat := (c.1 + c.2)
#reduce add1 (3, 5)
def add2 (a : nat) (b : nat) : nat := a + b
#reduce add2 3 5
#check add1
#check add2

def curry {alpha beta gamma : Type} 
(f : (prod alpha beta) -> gamma) : alpha -> beta -> gamma
:= fun (x : alpha) (y : beta), f (x,y)
#check curry add1
def uncurry {alpha beta gamma : Type}
(f : alpha -> beta -> gamma) : (prod alpha beta) -> gamma
:= fun (p : prod alpha beta) , f p.fst p.snd
#reduce uncurry add2 (3, 5)
#check uncurry add2
