% Modified run-length encoding.

pack_first([], _, [], []). 
pack_first([X|Xs], X, R, [X|Ys]) :-
    pack_first(Xs, X, R, Ys).
pack_first([X|Xs], Y, [X|Xs], []) :- 
    X \= Y.

encode_modified([], []).
encode_modified([Y|Ys], [Y |Xs]) :-
    pack_first([Y|Ys], Y, L, X),
    length(X, 1),
    encode_modified(L, Xs).
encode_modified([Y|Ys], [[Len, Y] |Xs]) :-
    pack_first([Y|Ys], Y, L, X),
    length(X, Len),
    Len \= 1,
    encode_modified(L, Xs).
