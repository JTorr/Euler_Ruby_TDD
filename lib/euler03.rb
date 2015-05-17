require 'Prime'

def largest_prime_factor(num)
  factors = Prime.prime_division(num)
  factors.flatten!.max
end 
