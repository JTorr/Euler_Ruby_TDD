NUM_HASH = {0 => 0, 1 => 3, 2 => 3, 3 => 5, 4 => 4, 5 => 4, 6 => 3, 7 => 5, 8 => 5, 9 => 4, 10 => 3, 11 => 6, 12 => 6, 13 => 8, 14 => 8, 15 => 7, 16 => 7, 17 => 9, 18 => 8, 19 => 8 }
TENS_HASH = {2 => 6, 3 => 6, 4 => 5, 5 => 5, 6 => 5, 7 => 7, 8 => 6, 9 => 6 }

def letter_count(num)
  num_chars = num.to_s.chars.to_a
  if NUM_HASH.keys.include?(num)
    NUM_HASH[num]
  else
    ones = num_chars[-1].to_i
    tens = num_chars[-2].to_i
    TENS_HASH[tens] + NUM_HASH[ones]
  end
end
