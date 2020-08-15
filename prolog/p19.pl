% P19 (**) Rotate a list N places to the left.

rotate(X,N,Y) :-
    length(X,Xl),
    Nn is (Xl - N) mod Xl, % Xl - N is needed to rotate left, mod to rotate more than Xl.
    length(E, Nn),   % List of elements of length N.
    append(F, E, X), % Split list.
    append(E, F, Y).
