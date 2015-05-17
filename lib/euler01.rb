  def find_multiples(max)
    (1...max).select {|num| num % 3 == 0 || num % 5 == 0 }
  end

  def sum_multiples(multiples_array)
    multiples_array.reduce(:+)
  end
