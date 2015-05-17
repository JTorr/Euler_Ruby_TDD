def find_next_fibonacci(sequence)
  sequence[-1] + sequence[-2]
end

def find_fibonaccis(max)
  sequence = [1,2]
  while sequence[-1] < max
    sequence << find_next_fibonacci(sequence)
  end
  sequence.pop unless sequence[-1] == max
  return sequence
end

def sum_even_numbers(sequence)
  sequence.select(&:even?).reduce(:+)
end
