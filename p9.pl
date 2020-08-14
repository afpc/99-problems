% P09 (**) Pack consecutive duplicates of list elements into sublists.

pack([],[]).
% We collect all element equel to X in Y.
% Continue with remaining elements Z.
pack([X|Xs],[Y|Ys]) :-
    collect(X,Xs,Z,Y),
    pack(Z,Ys).

% We search for X but nothing remains, only [X] to collect.
collect(X,[],[],[X]).
% If X is not equal to X then nothing can be collected.
% Remaining list is [Y|Ys] and collected elements are [X].
collect(X,[Y|Ys],[Y|Ys],[X]) :-
    X \= Y.
% X matches the head thus is added to Z.
collect(X,[X|Xs],Ys,[X|Zs]) :-
    collect(X,Xs,Ys,Zs).
