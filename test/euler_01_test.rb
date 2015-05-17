require File.expand_path '../test_helper.rb', __FILE__

class MultipleReducer01 < Minitest::Test
  def test_finds_multiples_of_3_and_5
    assert_equal [3,5,6,9], find_multiples(10)
    assert_equal [3,5,6,9,10,12,15,18], find_multiples(20)
  end

  def test_sums_multiples
    assert_equal 23, sum_multiples(find_multiples(10))
  end
end
