# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers 
# is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

class Integer
  def palindrome?
    to_s == to_s.reverse
  end
end

d = (100..999).to_a
puts d.product(d).map{|a, b| a * b }.select(&:palindrome?).max #906609