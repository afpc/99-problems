% P32 (**) Determine the greatest common divisor of two positive integer numbers.

gcd(X,0,X) :-
    X > 0.
gcd(X,Y,Z) :-
    Y > 0,
    Xn is X mod Y,
    gcd(Y,Xn,Z).

% ?- X is gcd(36,63).
:- arithmetic_function(gcd/2).
