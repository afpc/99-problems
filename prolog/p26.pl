% P26 (**) Generate the combinations of K distinct objects chosen from the N elements of a list.

combinations([],[]).
combinations([X|Xs],Y) :-
    combinations(Xs,R),
    take(X,R,Y).

take(X,Xs,[X|Xs]).
take(X,[Y|Ys],[Y|Zs]) :-
    take(X,Ys,Zs).

% See below a more verbose solution (does exactly the same).
% perm([],[]).
% perm(List,[Head|Perm]):-
%     delete(Head,List,Rest),
%     perm(Rest,Perm).
%
% delete(X,[X|Tail],Tail).
% delete(X,[Head|Tail],[Head|NewTail]) :-
%     delete(X,Tail,NewTail).
