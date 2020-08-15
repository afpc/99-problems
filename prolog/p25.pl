% P25 (*) Generate a random permutation of the elements of a list.

:- ensure_loaded(p23).

rnd_perm(X,Y) :-
    length(X, Xl),
    rnd_select(X, Xl, Y).
