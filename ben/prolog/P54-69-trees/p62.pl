% Collect the internal nodes of a binary tree in a list
% An internal node of a binary tree has either one or two non-empty successors. Write a predicate internals/2 to collect them in a list.

internals(nil, []).
internals(t(_, nil, nil), []) :- !.
internals(t(X, L, R), [X|N]) :-
    internals(L, NL), 
    internals(R, NR),
    append(NL, NR, N).
