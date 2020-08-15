% P16 (**) Drop every N'th element from a list.

drop(X,N,Y) :-
    drop(X,N,Y,N).

% See P15, it uses the same structure.
% X gets appended to Y as long as M != 1.
drop([],_,[],_).
drop([_|Xs],N,Y,1) :-
    drop(Xs,N,Y).
drop([X|Xs],N,[X|Ys],M) :-
    M > 1,
    Mn is M - 1,
    drop(Xs,N,Ys,Mn).
