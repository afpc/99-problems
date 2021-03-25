% P31 (**) Determine whether a given integer number is prime.

% See also: https://en.wikipedia.org/wiki/Primality_test
is_prime(2).
is_prime(3).
is_prime(X) :-
    X > 3,
    integer(X),
    X mod 2 =\= 0, % Prime numbers are never even (> 2).
    \+ divisible(X,3).

divisible(X,Y) :-
    X mod Y =:= 0. % Equal
divisible(X,Y) :-
    Y * Y < X,
    Yn is Y + 2,
    divisible(X,Yn).
