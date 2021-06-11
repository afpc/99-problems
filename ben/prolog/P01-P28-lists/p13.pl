% Run-length encoding of a list (direct solution).

count([], _, [], 0). 
count([X|Xs], X, R, N1) :-
    count(Xs, X, R, N0),
    N1 is N0 + 1.
count([X|Xs], Y, [X|Xs], 0) :- 
    X \= Y.

encode_direct([], []).
encode_direct([Y|Ys], [Y |Xs]) :-
    count([Y|Ys], Y, L, X),
    X == 1,
    encode_direct(L, Xs).
encode_direct([Y|Ys], [[X, Y] |Xs]) :-
    count([Y|Ys], Y, L, X),
    X \= 1,
    encode_direct(L, Xs).
