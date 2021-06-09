% Run-length encoding of a list.

pack_first([], _, [], []). 
pack_first([X|Xs], X, R, [X|Ys]) :-
    pack_first(Xs, X, R, Ys).
pack_first([X|Xs], Y, [X|Xs], []) :- 
    X \= Y.

encode([], []).
encode([Y|Ys], [[Len, Y] |Xs]) :-
    pack_first([Y|Ys], Y, L, X),
    length(X, Len),
    encode(L, Xs).
