% P23 (**) Extract a given number of randomly selected elements from a list.

:- ensure_loaded(p20).

rnd_select(_,0,[]).
rnd_select(X,N,[Y|Ys]) :-
    N > 0,
    length(X, Xl),
    M is random(Xl) + 1,
    % Remove a random element and add it to the result.
    remove_at(Y,X,M,Zs),
    Nn is N - 1,
    rnd_select(Zs,Nn,Ys).
