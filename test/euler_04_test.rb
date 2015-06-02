require File.expand_path '../test_helper.rb', __FILE__

class LargestPalindromeProduct < Minitest::Test
  def test_finds_largest_numbers_with_given_digits
    assert_equal 99, largest_factors(2)
    assert_equal 999, largest_factors(3)
  end

  def test_finds_all_palindrome_products
    assert_equal [1881, 2772, 3663, 4554, 5445, 6336, 7227, 8118, 9009, 686, 5335, 2112, 4224, 6336, 8448, 5225, 282, 5115, 828, 1001, 2002, 3003, 4004, 5005, 6006, 7007, 8008, 979, 616, 2112, 2552, 2992, 4224, 4664, 6336, 6776, 696, 595, 252, 2772, 747, 656, 474, 858, 6006, 616, 1001, 1771, 2002, 2772, 3003, 3773, 4004, 4774, 5005, 5775, 525, 222, 444, 666, 888, 2442, 4884, 292, 949, 414, 828, 4554, 272, 2992, 737, 858, 2112, 2442, 2772, 4224, 585, 2112, 252, 2772, 434, 868, 767, 232, 464, 696, 2552, 171, 969, 1881, 616, 212, 424, 636, 848, 2332, 676, 969, 343, 686, 2112, 141, 282, 1551, 414, 828, 585, 88, 484, 616, 989, 252, 656, 585, 858, 494, 646, 111, 222, 333, 444, 555, 666, 777, 888, 999, 1221, 252, 828, 525, 595, 272, 646, 66, 99, 363, 858, 434, 868, 232, 464, 696, 252, 616, 494, 676, 525, 575, 161, 414, 44, 66, 88, 242, 484, 252, 171, 323, 252, 272, 22, 33, 44, 55, 66, 77, 88, 99, 121, 8, 6, 9, 4], palindrome_products(largest_factors(2))
  end

  def test_finds_largest_palindrome_product
    assert_equal 9009, largest_palindrome_product(palindrome_products(99))
    assert_equal 906609, largest_palindrome_product(palindrome_products(999))
  end
end
