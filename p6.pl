% P06 (*) Find out whether a list is a palindrome.

% If the reverse of L is itself then it is a palindrome.
is_palindrome(L) :- my_reverse(L,L).

% NOTE: p5.pl is used and needs to be loaded!
% Also possible with normal reverse.
