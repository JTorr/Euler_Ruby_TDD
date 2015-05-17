
require File.expand_path '../test_helper.rb', __FILE__

class LargestPrimeFactor < Minitest::Test
  def test_finds_largest_prime_factor
    assert_equal 29, largest_prime_factor(13195)
    assert_equal 6857, largest_prime_factor(600851475143)
  end
end
