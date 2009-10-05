# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

require 'mathn' # Ruby 1.9 adds Integer#prime_division

puts 600851475143.prime_division.last.first #6857