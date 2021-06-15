% Determine whether two positive integer numbers are coprime.

:- ensure_loaded(p32).

coprime(X,Y) :-
    gcd(X,Y,1).
