namespace hidden
universe u
constant vec : Type u -> nat -> Type u
namespace vec
  constant empty : Pi alpha : Type u, vec alpha 0
  constant cons :
    Pi (alpha : Type u) (n : nat), 
    alpha -> vec alpha n -> vec alpha (n + 1)
  constant append :
    Pi (alpha : Type u) (n m : nat), 
    vec alpha m -> vec alpha n -> vec alpha (n + m)
  constant vec_add : 
    Pi (alpha : Type u) (n  : nat),
    vec alpha n -> vec alpha n -> vec alpha n
  constant vec_reverse :
    Pi (alpha : Type u) (n  : nat),
    vec alpha n -> vec alpha n -> vec alpha n
end vec

open hidden.vec
variable alpha : Type u
variable a : alpha
variable n : nat
variables v1 v2 : vec alpha n
#check empty alpha
#check cons alpha 0 a (empty alpha)
#check append alpha n n v1 v2
#check vec_add alpha n v1 v2
#check vec_reverse alpha n (vec_add alpha n v1 v2)
end hidden