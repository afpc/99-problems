-- Find out whether a list is a palindrome. 
-- A palindrome can be read forward or backward. 

-- With prelude functions. 
isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = reverse list == list
