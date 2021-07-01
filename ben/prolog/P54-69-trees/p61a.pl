% Collect the leaves of a binary tree in a list
% A leaf is a node with no successors. Write a predicate leaves/2 to collect them in a list.

leaves(nil, []).
leaves(t(X, nil, nil), [X]) :- !.
leaves(t(_, L, R), N) :-
    leaves(L, NL), 
    leaves(R, NR),
    append(NL, NR, N).
