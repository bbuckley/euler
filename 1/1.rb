# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

#1.upto(999).select{|e| [3,5].any?{|i| (e % i).zero? }}.inject(:+)  #233168

# is thus better?
div = lambda{|x| [3,5].any?{|i| (x % i).zero? }
1.upto(999).select(&div).inject(:+)

# require 'benchmark'
# Benchmark.bm do |x| x.report do 
#   puts (1...1000).select{|e| [3,5].any?{|i| e % i == 0 }}.inject(:+)  #233168
# end end
