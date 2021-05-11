% Reverse a list.

my_reverse([],[]).
my_reverse([X|L], S) :-
    my_reverse(L,R),
    append(R,[X],S).
