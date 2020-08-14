% P03 (*) Find the K'th element of a list.
% The first element in the list is number 1.

% First element has index 1.
element_at(X,[X|_],1).
% Remove 1 from N, skip the head and continue with the tail (until N = 1).
element_at(X,[_|Y],N) :-
    Nn is N - 1,
    element_at(X,Y,Nn).
