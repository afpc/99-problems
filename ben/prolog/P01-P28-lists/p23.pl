% Extract a given number of randomly selected elements from a list.

rnd_select(_, 0, []).
rnd_select(L, N0, [X|R]) :-
    N0 > 0, 
    N1 is N0 - 1,
    length(L, Len), 
    random(0, Len, I),
    nth0(I, L, X),
    rnd_select(L, N1, R).
