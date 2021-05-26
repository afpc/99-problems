% Drop every N'th element from a list.

drop(L, Nb, R) :- drop(L, Nb, R, Nb). 

drop([], _, [], _).
drop([_|Xs], 1, R, Nb) :-
    drop(Xs, Nb, R, Nb).
drop([X|Xs], N0, [X|R], Nb) :-
    N0 > 1,
    N1 is N0 - 1,
    drop(Xs, N1, R, Nb).
