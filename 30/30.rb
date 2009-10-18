# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:
# 
#     1634 = 1^(4) + 6^(4) + 3^(4) + 4^(4)
#     8208 = 8^(4) + 2^(4) + 0^(4) + 8^(4)
#     9474 = 9^(4) + 4^(4) + 7^(4) + 4^(4)
# 
# As 1 = 1^(4) is not a sum it is not included.
# 
# The sum of these numbers is 1634 + 8208 + 9474 = 19316.
# 
# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.


puts (2..99999).select{|i|
  d = i.to_s.split("").map(&:to_i) 
  (d[0]**5 + d[1]**5 + d[2]**5 + d[3]**5 + d[4]**5) == i
}.inject(:+)
# 
# puts (1..100).select{|i| 
#   true
# }

 power, total = 5, 0  
   
 (power * 9**power).times do |i|  
   total += i if i == i.to_s.split('').inject(0) {  
     |sum, n|  
     sum + n.to_i**power  
   }  
 end  
   
puts total - 1

