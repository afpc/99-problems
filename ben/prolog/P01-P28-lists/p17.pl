% Split a list into two parts; the length of the first part is given.

split([X|Xs], 1, [X], Xs).
split([X|Xs], N0, [X|L1], L2) :-
    N0 > 1, 
    N1 is N0 - 1, 
    split(Xs, N1, L1, L2).
