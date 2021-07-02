% Construct completely balanced binary trees
% In a completely balanced binary tree, the following property holds for every node: The number of nodes in its left subtree and the number of nodes in its right subtree are almost equal, which means their difference is not greater than one.
% Write a predicate cbal_tree/2 to construct completely balanced binary trees for a given number of nodes. The predicate should generate all solutions via backtracking. Put the letter 'x' as information into all nodes of the tree.

cbal_tree(0, nil).
cbal_tree(1, t(x, nil, nil)).
cbal_tree(N, T) :-
    N > 1,
    N1 is N - 1, 
    cbal_tree(N1, T1), 
    extend_tree(T1, T).

extend_tree(nil, t(x, nil, nil)).
extend_tree(t(x, L0, R0), t(x, L0, R1)) :-
    nodes(L0, NL),
    nodes(R0, NR),
    NL >= NR, 
    extend_tree(R0, R1). 
extend_tree(t(x, L0, R0), t(x, L1, R0)) :-
    nodes(L0, NL),
    nodes(R0, NR),
    NR >= NL, 
    extend_tree(L0, L1). 

nodes(nil, 0).
nodes(t(_, L, R), N) :-
    nodes(L, NL), 
    nodes(R, NR),
    N is 1 + NL + NR. 
