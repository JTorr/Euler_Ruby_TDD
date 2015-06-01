#Set the 1st factor to 99, second to 98
#Multiply them together to get the result
#If the result is a palindrome, return the result
#Otherwise reduce the first factor by 1 and multiply again until you get a palindrome
#If the first_factor reaches 0, reset it to the highest possible factor & reset the 2nd factor to 99
#Repeat until you get a palindrome

def largest_factors(digits)
  nines = "9" * (digits - 1)
  [(nines + "9").to_i, (nines + "8").to_i ]
end

def largest_palindrome_product(factors, first_factor=nil, second_factor=nil)
  original_second_factor = factors[1]
  first_factor ||= factors[0]
  second_factor ||= original_second_factor
  result = first_factor * second_factor
  if result.to_s == result.to_s.reverse
    return result
  elsif first_factor == 0
    first_factor -= 1
    second_factor = original_second_factor
    largest_palindrome_product(factors, first_factor, second_factor)
  else
    #stopping point
  end
    
    
end
