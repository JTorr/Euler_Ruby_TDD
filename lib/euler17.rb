NUM_HASH = {0 => 0, 1 => 3, 2 => 3, 3 => 5, 4 => 4, 5 => 4, 6 => 3, 7 => 5, 8 => 5, 9 => 4, 10 => 3, 11 => 6, 12 => 6, 13 => 8, 14 => 8, 15 => 7, 16 => 7, 17 => 9, 18 => 8, 19 => 8, 1000 => 11 }
TENS_HASH = {0 => 0, 2 => 6, 3 => 6, 4 => 5, 5 => 5, 6 => 5, 7 => 7, 8 => 6, 9 => 6 }

# Each value for hundreds includes the word "hundred". 
HUNDREDS_HASH = { 0 => 0, 1 => 10, 2 => 10, 3 => 12, 4 => 11, 5 => 12, 6 => 10, 7 => 12, 8 => 12, 9 => 11 }

def letter_count(num)
  num_chars = num.to_s.chars.to_a
  if NUM_HASH.keys.include?(num)
    result = NUM_HASH[num]
  elsif num_chars.length == 3
    hundreds = HUNDREDS_HASH[num_chars.shift.to_i] || 0
    tens, num_chars = find_tens_value(num_chars)
    ones = NUM_HASH[num_chars[-1].to_i] || 0
    result = hundreds + tens + ones
    result += 3 if uneven_hundred?(num)
  else
    hundreds = 0
    tens, num_chars = find_tens_value(num_chars)
    ones = NUM_HASH[num_chars[-1].to_i] || 0
    result = hundreds + tens + ones
  end
    return result
end

def uneven_hundred?(num_chars)
  !ends_in_zeros?(num_chars)
end

def ends_in_zeros?(num)
  num_chars = num.to_s.chars.to_a
  num_chars[1] == "0" && num_chars[2] == "0"
end

def find_tens_value(num_chars)
  tens = NUM_HASH[num_chars[0..1].join.to_i]
  if tens.nil?
    tens = TENS_HASH[num_chars[-2].to_i]
  else
    num_chars = 0
  end
  return tens, num_chars
end
    
def sum_letter_counts(array)
  array.inject(0) {|sum, num| sum + letter_count(num) }
end

puts sum_letter_counts((100..999).to_a)
