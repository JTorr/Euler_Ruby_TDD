
require File.expand_path '../test_helper.rb', __FILE__

class EvenFibonacci < Minitest::Test
  def test_finds_next_fibonacci
    assert_equal 3, find_next_fibonacci([1,2])
    assert_equal 34, find_next_fibonacci([1, 2, 3, 5, 8, 13, 21])
    assert_equal 89, find_next_fibonacci([1, 2, 3, 5, 8, 13, 21, 34, 55])
  end
end
