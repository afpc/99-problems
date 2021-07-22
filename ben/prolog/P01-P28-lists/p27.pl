% Group the elements of a set into disjoint subsets.

group(_, [], []).
group(L1, [X|Xs], [R|Rs]) :-  
    subset(R, L1),
    length(R, X), 
    subtract(L1, R, L2), 
    group(L2, Xs, Rs).

% selectN(0, S, S).
% selectN(N, S, R) :-
%    N > 0,     
