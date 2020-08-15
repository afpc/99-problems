% P15 (**) Duplicate the elements of a list a given number of times.

my_duplicate(X,N,Y) :-
    my_duplicate(X,N,Y,N).

% Nothing left to duplicate.
my_duplicate([],_,[],_).
% We have duplicated X N times.
my_duplicate([_|Xs],N,Y,0) :-
    my_duplicate(Xs,N,Y). % Go to the next.
% Duplicate X M times.
my_duplicate([X|Xs],N,[X|Ys],M) :-
    M > 0,
    Mn is M - 1,
    my_duplicate([X|Xs],N,Ys,Mn).
