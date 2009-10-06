# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.
# 
# What is the 10001^(st) prime number?
# 
# Answer:
#   104743

require 'mathn'
x = Prime.instance.each
y = nil
10001.times { y = x.succ }
puts y #104743