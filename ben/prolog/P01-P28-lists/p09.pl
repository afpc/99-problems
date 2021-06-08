% Pack consecutive duplicates of list elements into sublists.

pack_first([], _, [], []). 
pack_first([X|Xs], X, R, [X|Ys]) :-
    pack_first(Xs, X, R, Ys).
pack_first([X|Xs], Y, [X|Xs], []) :- 
    X \= Y.

pack([], []).
pack([Y|Ys], [X|Xs]) :-
    pack_first([Y|Ys], Y, L, X),
    pack(L, Xs).
