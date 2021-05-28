% Extract a slice from a list.

slice([X|_], _, 1, [X]).
slice([X|Xs], 1, N0, [X|R]) :-
    N0 > 1,
    N1 is N0 - 1, 
    slice(Xs, 1, N1, R).
slice([_|Xs], N0, N1, R) :-
    N0 > 1, 
    N1 > 1,
    N2 is N0 - 1,
    N3 is N1 - 1,
    slice(Xs, N2, N3, R).
