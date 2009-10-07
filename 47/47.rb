# The first two consecutive numbers to have two distinct prime factors are:
# 
# 14 = 2 × 7
# 15 = 3 × 5
# 
# The first three consecutive numbers to have three distinct prime factors are:
# 
# 644 = 2² × 7 × 23
# 645 = 3 × 5 × 43
# 646 = 2 × 17 × 19.
# 
# Find the first four consecutive integers to have four distinct primes factors. What is the first of these numbers?

require 'mathn'

n = 4
puts (1..1/0.0).find{|x| (0..n-1).all?{ |i| (x + i).prime_division.size == n } } #134043
