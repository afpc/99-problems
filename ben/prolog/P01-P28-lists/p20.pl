% Remove the K'th element from a list.

remove_at(X, [X|Xs], 1, Xs).
remove_at(A, [X|Xs], N0, [X|L]) :-
    N0 > 1,
    N1 is N0 - 1,
    remove_at(A, Xs, N1, L).
