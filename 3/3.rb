# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

require 'mathn'

class Integer
  # @prime = Prime
  # def prime?
  #   P.prime?(self)
  #   # self < 1 ? false : !(2..self - 1).find{ |i| self % i == 0 }
  # end 
  #  
  # def primes
  #   (2..self).select(&:prime?)
  # end
  # 
  # def factors
  #   (1..self / 2).select{ |f| self % f == 0 } << self
  # end
  # 
  # def prime_factors
  #   factors.select(&:prime?)  #works but slow
  # end
  
  # require 'mathn'
  # primes = Prime.new
  # factor = primes.next
  
  def factors
    prime = (2..self).find{ |i| self % i == 0 } 
    [prime] + (prime == self ? [] : (self / prime).factors)   
  end
  
  require 'mathn'
  def min_prime
    primes = Prime.instance
    p = primes.next
    while p < self do
      return p if self % p == 0
      p = primes.next
    end
    nil
  end
  
  # def max_prime
  #   primes = Prime.new
  #   factor = primes.next
  #   if(self % factor == 0)    
  # end
  
end



