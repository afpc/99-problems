% P18 (**) Extract a slice from a list.

slice([X|_],1,1,[X]).
% Append N - 1 elements to result.
slice([X|Xs],1,N,[X|Y]) :-
    N > 1,
    Nn is N - 1,
    slice(Xs,1,Nn,Y).
% Remove first N elements.
slice([_|Xs],N,M,Y) :-
    N > 1,
    Nn is N - 1,
    Mn is M - 1, % M -= 1 since the length of X changes.
    slice(Xs,Nn,Mn,Y).
