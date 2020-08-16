% P34 (**) Calculate Euler's totient function phi(m).

:- ensure_loaded(p03).

phi(1,1).
phi(X,Y) :-
    phi(X,Y,1,0).

phi(X,Y,X,Y).
phi(X,Y,V,W) :-
    V < X,
    coprime(V,X), !,
    Vn is V + 1,
    Wn is W + 1,
    phi(X,Y,Vn,Wn).
phi(X,Y,V,W) :-
    V < X,
    Vn is V + 1,
    phi(X,Y,Vn,W).

% ?- X is phi(10).
:- arithmetic_function(phi/1).
