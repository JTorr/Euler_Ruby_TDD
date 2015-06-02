#Set the 1st factor to 99, second to 99
#Multiply them together to get the result
#If the result is a palindrome, return the result
#Otherwise reduce the first factor by 1 and multiply again until you get a palindrome
#If the first_factor reaches 0, reset it to the highest possible factor & reset the 2nd factor to 99
#Repeat until you get a palindrome

def largest_factors(digits)
  nines = "9" * (digits - 1)
  (nines + "9").to_i
end

def palindrome_products(highest_factor, factors = nil, palindromes=[])
  highest_factor = highest_factor.to_i
  return palindromes if highest_factor == 0
  factors = (2..highest_factor).to_a
  factors.map do |factor|
    result = factor * highest_factor
    palindromes << result if result.to_s == result.to_s.reverse
  end
  highest_factor -= 1
  palindrome_products(highest_factor, factors, palindromes)
end

def largest_palindrome_product(palindromes)
  palindromes.max
end

