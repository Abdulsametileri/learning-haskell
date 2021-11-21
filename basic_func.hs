inc x = x + 1
double x = x*2
square x = x^2

q3 n = if even n
       then n - 2
       else 3 * (n + 1)

q3a n = if n `mod` 2 == 0
        then n - 2
        else 3*n+1
        