
require File.expand_path '../test_helper.rb', __FILE__

class EvenFibonacci < Minitest::Test
  def test_finds_next_fibonacci
    assert_equal 3, find_next_fibonacci([1,2])
    assert_equal 34, find_next_fibonacci([1, 2, 3, 5, 8, 13, 21])
    assert_equal 89, find_next_fibonacci([1, 2, 3, 5, 8, 13, 21, 34, 55])
  end

  def test_finds_fibonaccis_to_max_number
    assert_equal [1, 2, 3, 5, 8], find_fibonaccis(10)
    assert_equal [1, 2, 3, 5, 8, 13, 21], find_fibonaccis(25)
    assert_equal [1, 2, 3, 5, 8, 13, 21, 34], find_fibonaccis(34)
  end

  def test_sums_even_fibonaccis_to_max_number
    assert_equal 4613732, sum_even_numbers(find_fibonaccis(4000000))
  end
end
