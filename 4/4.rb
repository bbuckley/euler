# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers 
# is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

class Integer
  def palindrome?
    to_s == to_s.reverse
  end
end

palindromes = []
100.upto(999) do |n|
  100.upto(999) do |m|
    x = n * m
    palindromes << x if x.palindrome?
  end
end
puts palindromes.max  #906609

# and a golfed solution :)
# puts [].tap{|p|100.upto(999){|n| 100.upto(999){|m| x = n * m; p << x if x.to_s == x.to_s.reverse }}}.max