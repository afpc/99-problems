% P12 (**) Decode a run-length encoded list.
% Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.

decode([],[]).
% X is a single element.
decode([X|Xs],[X|Ys]) :-
    \+ is_list(X), % See also P07.
    decode(Xs,Ys).
% Only one left.
decode([[1,X]|Xs],[X|Ys]) :-
    decode(Xs,Ys).
% Add one X to Y until N = 1.
decode([[N,X]|Xs],[X|Ys]) :-
    N > 1,
    Nn is N - 1,
    decode([[Nn,X]|Xs],Ys).
