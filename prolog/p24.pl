% P24 (*) Lotto: Draw N different random numbers from the set 1..M.

:- ensure_loaded(p22).
:- ensure_loaded(p23).

lotto(N,M,X) :-
    range(1,M,R),
    rnd_select(R,N,X).
