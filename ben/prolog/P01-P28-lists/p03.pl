% Find the K'th element of a list.
% The first element in the list is number 1.

element_at(X,[X|_],1).
element_at(X,[_|L],N0) :-
    N1 is N0 - 1,
    element_at(X,L,N1). 
