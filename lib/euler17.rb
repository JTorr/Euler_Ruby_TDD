NUM_HASH = {0 => 0, 1 => 3, 2 => 3, 3 => 5, 4 => 4, 5 => 4, 6 => 3, 7 => 5, 8 => 5, 9 => 4, 10 => 3, 11 => 6, 12 => 6, 13 => 8, 14 => 8, 15 => 7, 16 => 7, 17 => 9, 18 => 8, 19 => 8 }
TENS_HASH = {0 => 0, 2 => 6, 3 => 6, 4 => 5, 5 => 5, 6 => 5, 7 => 7, 8 => 6, 9 => 6 }

# Each value for hundreds includes the word "hundred". Two hundred also includes the word "and"
HUNDREDS_HASH = { 0 => 0, 1 => 10, 2 => 13, 3 => 12, 4 => 11, 5 => 12, 6 => 10, 7 => 12, 8 => 12, 9 => 11 }

def letter_count(num)
  num_chars = num.to_s.chars.to_a
  if NUM_HASH.keys.include?(num)
    NUM_HASH[num]
  else
    ones = num_chars[-1].to_i || 0
    tens = num_chars[-2].to_i || 0
    hundreds = num_chars[-3].to_i || 0
    TENS_HASH[tens] + NUM_HASH[ones] + HUNDREDS_HASH[hundreds]
  end
end
