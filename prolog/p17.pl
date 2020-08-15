% P17 (*) Split a list into two parts; the length of the first part is given.

split(X,0,[],X).
split([X|Xs],N,[X|Y],Z) :-
    N > 0,
    Nn is N - 1,
    split(Xs,Nn,Y,Z).
