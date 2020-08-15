% P14 (*) Duplicate the elements of a list.

my_duplicate([],[]).
my_duplicate([X|Xs],[X,X|Ys]) :-
    my_duplicate(Xs,Ys).
