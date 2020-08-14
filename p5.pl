% P05 (*) Reverse a list.

my_reverse(L,K) :-
    acc_reverse(L,K,[]).

% Return the accumulator.
acc_reverse([],L,L).
% Continue with the tail and add the removed head to the front of the accumulator.
acc_reverse([X|Xs],L,Acc) :-
    acc_reverse(Xs,L,[X|Acc]).
