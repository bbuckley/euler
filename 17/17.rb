# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# class Integer
#   def letters
#     to_s
#   end
# end

digits = %w(zero one two three four five six seven eight nine)



puts (1..1000).inject(0){|s, n| s + n.to_s.split("").map{|d| digits[d.to_i].size }.inject(:+) } #11571

puts 12345.to_s.split("").map{|d| digits[d.to_i].size }.inject(:+) #19
