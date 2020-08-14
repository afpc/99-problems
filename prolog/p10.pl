% P10 (*) Run-length encoding of a list.
% Use the result of problem P09 to implement the so-called run-length encoding data compression method.
% Consecutive duplicates of elements are encoded as terms [N,E] where N is the number of duplicates of the element E.

encode(L,K) :-
    pack(L,S),
    pack_to_encode(S,K).

pack_to_encode([],[]).
pack_to_encode([[X|Xs]|Ys],[[N,X]|Zs]) :-
    length([X|Xs],N), % Get length of packed elements.
    pack_to_encode(Ys,Zs).
