% Duplicate the elements of a list a given number of times.

dupli([], _, []).
dupli([X|Xs], Nb, R) :-
    repli(X, Nb, Xn), 
    dupli(Xs, Nb, Xsn), 
    append(Xn, Xsn, R).

repli(_, 0, []).
repli(X, N0, [X|Xs]) :-
    N0 > 0,
    N1 is N0 - 1,
    repli(X, N1, Xs).
