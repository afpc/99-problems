% P11 (*) Modified run-length encoding.
% Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as [N,E] terms.

my_modify(L,K) :-
    encode(L,S),
    simplify(S,K).

simplify([],[]).
% Remove the encoding of only one element.
simplify([[1,X]|Xs],[X|Ys]) :-
    simplify(Xs,Ys).
% Just copy over.
simplify([[N,X]|Xs],[[N,X]|Ys]) :-
    N > 1, % Make sure to add this otherwise Prolog will give multiple solutions.
    simplify(Xs,Ys).
