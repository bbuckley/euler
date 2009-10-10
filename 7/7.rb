# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.
# 
# What is the 10001^(st) prime number?

require 'mathn'
puts Prime.instance.each.tap{ |x| 10000.times{ x.next} }.next  #104743
