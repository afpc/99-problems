% P33 (*) Determine whether two positive integer numbers are coprime.

:- ensure_loaded(p02).

coprime(X,Y) :-
    gcd(X,Y,1).
