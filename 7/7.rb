# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.
# 
# What is the 10001^(st) prime number?
# 
# Answer:
#   104743

require 'mathn'
x = Prime.instance.each
10000.times { x.succ }
puts x.succ #104743