% Generate a random permutation of the elements of a list.

rnd_permu([], []).
rnd_permu(L, [X|R]) :-
    length(L, Len),
    Len > 0, 
    random(0, Len, I),
    nth0(I, L, X, Xs),
    rnd_permu(Xs, R).
