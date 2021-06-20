% Compare the two methods of calculating Euler's totient function.

:- ensure_loaded(p34).
:- ensure_loaded(p37).

totient_test(N) :-
    write('totient_phi (P34): '), 
    time(totient_phi(N, Phi1)), 
    write('result = '), write(Phi1), nl,
    write('totient_phi_2 (p37): '), 
    time(totient_phi_2(N, Phi2)),
    write('result = '), write(Phi2), nl.
