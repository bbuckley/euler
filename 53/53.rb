# Problem 53
# 26 September 2003
# 
# There are exactly ten ways of selecting three from five, 12345:
# 
# 123, 124, 125, 134, 135, 145, 234, 235, 245, and 345
# 
# In combinatorics, we use the notation, ^(5)C_(3) = 10.
# 
# In general,
# ^(n)C_(r) =   
# n!
# 
# r!(n−r)!
#   ,where r ≤ n, n! = n×(n−1)×...×3×2×1, and 0! = 1.
# 
# It is not until n = 23, that a value exceeds one-million: ^(23)C_(10) = 1144066.
# 
# How many, not necessarily distinct, values of  ^(n)C_(r), for 1 ≤ n ≤ 100, are greater than one-million?


s = 0
(1..25).each do |n|
  (1..n).each do |r|
    s += 1 if (1..n).to_a.combination(r).to_a.size > 1000000
  end
end
puts s
     
    
  
