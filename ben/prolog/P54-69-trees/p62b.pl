% Collect the nodes at a given level in a list
% A node of a binary tree is at level N if the path from the root to the node has length N-1. The root node is at level 1. Write a predicate atlevel/3 to collect all nodes at a given level in a list. 

atlevel(nil, _, []).
atlevel(t(X, _, _), 1, [X]).
atlevel(t(_, L, R), N, A) :-
    N > 1,
    N1 is N - 1,
    atlevel(L, N1, LL), 
    atlevel(R, N1, LR),
    append(LL, LR, A).
