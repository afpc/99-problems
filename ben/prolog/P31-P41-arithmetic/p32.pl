% Determine the greatest common divisor of two positive integer numbers.

gcd(X, X, X).
gcd(N1, N2, R) :-
    N1 > N2,
    N3 is N1 - N2,
    gcd(N2, N3, R).
gcd(N1, N2, R) :-
    N2 > N1, 
    N3 is N2 - N1, 
    gcd(N1, N3, R).

:- arithmetic_function(gcd/2).
