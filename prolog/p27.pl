% P27 (**) Group the elements of a set into disjoint subsets.

group3(A,X,Y,Z) :-
    select(2,A,X),
    subtract(A,X,A1), % Remove chosen X from A.
    select(3,A1,Y),
    subtract(A1,Y,A2), % Remove chosen Y from A1.
    select(4,A2,Z),
    subtract(A2,Z,[]). % Removing chosen Z from A2 must result in [].

% See P26 for this part!
select(0,_,[]).
select(N,X,[Y|Ys]) :-
    N > 0,
    del(Y,X,X1),
    Nn is N - 1,
    select(Nn,X1,Ys).

del(X,[X|Ys],Ys).
del(X,[_|Y],Z) :-
    del(X,Y,Z).

group([],[],[]).
group(X,[Y|Ys],[Z|Zs]) :-
    select(Y,X,Z),    % Select Y from X.
    subtract(X,Z,X1), % Remove selected Z from X.
    group(X1,Ys,Zs).
