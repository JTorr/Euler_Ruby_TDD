#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

require File.expand_path '../test_helper.rb', __FILE__

class LetterCounter < Minitest::Test
  def test_counts_letters_for_single_digit_numbers
    assert_equal 3, letter_count(1)
    assert_equal 3, letter_count(2)
    assert_equal 5, letter_count(3)
    assert_equal 4, letter_count(4)
    assert_equal 4, letter_count(5)
    assert_equal 3, letter_count(6)
    assert_equal 5, letter_count(7)
    assert_equal 5, letter_count(8)
    assert_equal 4, letter_count(9)
  end

  def test_counts_letters_for_numbers_to_nineteen
    assert_equal 3, letter_count(10)
    assert_equal 6, letter_count(11)
    assert_equal 6, letter_count(12)
    assert_equal 8, letter_count(13)
    assert_equal 8, letter_count(14)
    assert_equal 7, letter_count(15)
    assert_equal 7, letter_count(16)
    assert_equal 9, letter_count(17)
    assert_equal 8, letter_count(18)
    assert_equal 8, letter_count(19)
  end

  def test_counts_letters_for_multiples_of_ten
    assert_equal 6, letter_count(20)
    assert_equal 6, letter_count(30)
    assert_equal 5, letter_count(40)
    assert_equal 5, letter_count(50)
    assert_equal 5, letter_count(60)
    assert_equal 7, letter_count(70)
    assert_equal 6, letter_count(80)
    assert_equal 6, letter_count(90)
  end

  def test_counts_letters_for_two_digit_numbers
    assert_equal 9, letter_count(21)
    assert_equal 9, letter_count(32)
    assert_equal 10, letter_count(43)
    assert_equal 9, letter_count(55)
    assert_equal 8, letter_count(66)
    assert_equal 11, letter_count(74)
    assert_equal 11, letter_count(87)
    assert_equal 10, letter_count(99)
    assert_equal 11, letter_count(98)
  end

  def test_counts_letters_for_hundreds
    assert_equal 10, letter_count(100)
    assert_equal 10, letter_count(200)
    assert_equal 12, letter_count(300)
    assert_equal 11, letter_count(400)
    assert_equal 11, letter_count(500)
    assert_equal 10, letter_count(600)
    assert_equal 12, letter_count(700)
    assert_equal 12, letter_count(800)
    assert_equal 11, letter_count(900)
  end

  def test_counts_letters_for_three_digit_numbers
    assert_equal 16, letter_count(110)
    assert_equal 21, letter_count(219)
    assert_equal 21, letter_count(320)
    assert_equal 24, letter_count(999)
    assert_equal 23, letter_count(342)
    assert_equal 20, letter_count(115)
  end

  def test_counts_letters_for_one_thousand
    assert_equal 11, letter_count(1000)
  end

  def test_sums_letters_for_number_range
    assert_equal 36, sum_letter_counts((1..9).to_a)
    assert_equal 70, sum_letter_counts((10..19).to_a)
    assert_equal 748, sum_letter_counts((20..99).to_a)
    assert_equal 20259, sum_letter_counts((100..999).to_a)
    assert_equal 21124, sum_letter_counts((1..1000).to_a)
  end
end
