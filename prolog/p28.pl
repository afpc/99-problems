% P28 (**) Sorting a list of lists according to length of sublists.

lsort(X,Y) :-
    add_k(X,K),
    keysort(K,Ks), % Sort a list of pairs. List must be a list of Key-Value pairs.
    rem_k(Ks,Y).

add_k([],[]).
add_k([X|Xs],[Xl-X|Ys]) :-
    !,
    length(X, Xl),
    add_k(Xs,Ys).

rem_k([],[]).
rem_k([_-X|Xs],[X|Ys]) :-
    rem_k(Xs,Ys).


lfsort(X,Y) :-
    add_k_inv(X,K),
    keysort(K,Ks),
    pack(Ks,Kp),
    lsort(Kp,Kps),
    flatten(Kps,Kf),
    rem_k(Kf,Y).

% Add a key but negative value.
add_k_inv([],[]).
add_k_inv([X|Xs],[Xl-X|Ys]) :-
    length(X, L),
    Xl is -L,
    add_k_inv(Xs,Ys).

% Same as in previous problem but different structure.
pack([],[]).
pack([Xl-X|Xs],[[Xl-X|Z]|Zs]) :-
    remove(Xl-X,Xs,Ys,Z),
    pack(Ys,Zs).

% Given a key-value and list.
% Transfers all copies of length Xl. (Y to Z).
remove(_,[],[],[]).
remove(Xl-_,[Yl-Y|Ys],[Yl-Y|Ys],[]) :-
    Xl \= Yl.
remove(Xl-_,[Xl-X|Xs],Y,[Xl-X|Zs]) :-
    remove(Xl-X,Xs,Y,Zs).
