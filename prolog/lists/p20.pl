% P20 (*) Remove the K'th element from a list.

% X is the removed value, Xs is what is left.
remove_at(X,[X|Xs],1,Xs).
remove_at(X,[Y|Xs],N,[Y|Ys]) :-
    N > 1,
    Nn is N - 1,
    remove_at(X,Xs,Nn,Ys).
