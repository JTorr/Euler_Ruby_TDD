def largest_factors(digits)
  nines = "9" * (digits - 1)
  @factors = [(nines + "8").to_i, (nines + "9").to_i]
end

def largest_palindrome_product(factors)
  result = @factors[0] * @factors[1]
  if result.to_s == result.to_s.reverse
    return result
  elsif @factors[0] > @factors[1]
    @factors[0] -= 1
    largest_palindrome_product(@factors)
  else
    @factors[1] -= 1
    largest_palindrome_product(@factors)
  end
end

