require File.expand_path '../test_helper.rb', __FILE__

class LargestPalindromeProduct < Minitest::Test
  def test_finds_largest_numbers_with_given_digits
    assert_equal [98, 99], largest_factors(2)
    assert_equal [998, 999], largest_factors(3)
  end

  def test_finds_largest_palindrome_product
    assert_equal 9009, largest_palindrome_product(largest_factors(2))
    assert_equal 1, largest_palindrome_product(largest_factors(3))
  end
end
