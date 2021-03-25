# Arithmetic

### P31 (**) Determine whether a given integer number is prime.
    
    Example:
    ?- is_prime(7).
    Yes

### P32 (**) Determine the greatest common divisor of two positive integer numbers.
Use Euclid's algorithm.

    Example:
    ?- gcd(36, 63, G).
    G = 9

    Define gcd as an arithmetic function; so you can use it like this:
    ?- G is gcd(36,63).
    G = 9

### P33 (*) Determine whether two positive integer numbers are coprime.
Two numbers are coprime if their greatest common divisor equals 1.
    
    Example:
    ?- coprime(35, 64).
    Yes

### P34 (**) Calculate Euler's totient function phi(m).
Euler's so-called totient function phi(m) is defined as the number of positive integers r (1 <= r < m) that are coprime to m.

    Example: m = 10: r = 1,3,7,9; thus phi(m) = 4. Note the special case: phi(1) = 1.

    ?- Phi is totient_phi(10).
    Phi = 4

### P35 (**) Determine the prime factors of a given positive integer.
Construct a flat list containing the prime factors in ascending order.

    Example:
    ?- prime_factors(315, L).
    L = [3,3,5,7]

### P36 (**) Determine the prime factors of a given positive integer (2).
Construct a list containing the prime factors and their multiplicity.
    
    Example:
    ?- prime_factors_mult(315, L).
    L = [[3,2],[5,1],[7,1]]

    Hint: The problem is similar to problem P13.   
