gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AllPatternTest < Minitest::Test

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
    end
    assert all_zeros
  end

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number.zero?
      # Your code goes here
    end
    refute all_zeros
  end

  def test_all_gone
    words = ["gone", "gone", "gone", "gone", "gone", "gone", "gone"]
    all_gone = false
    words.each do |word|
      all_gone = true if word == "gone"
    end
    assert all_gone
  end

  def test_not_all_gone
    all_gone = true
    words = ["gone", "gone", "gone", "gone", "gone", "there", "gone", "gone"]
    words.each {|word| all_gone = false unless word == "gone"}
    refute all_gone
  end

  def test_all_empty
    all_empty = false
    strings = ["", "", "", "", "", "", ""]
    strings.each do |string|
      all_empty = true if string.empty?
    end
    assert all_empty
  end

  def test_not_all_empty
    all_empty = true
    strings = ["", "", "", "full", "", "", ""]
    strings.each do |string|
      all_empty = false unless string.empty?
    end
    refute all_empty
  end

  def test_not_all_uppercase
    words = ["DOUGHNUT", "CASH", "MAIN", "bOWl", "SMACK", "SAND"]
    all_caps = true
    words.each do |word|
      all_caps = false if word.upcase != word
    end
    refute all_caps
  end

  def test_all_lies
    all_lies = false
    lies = [false, false, false, false]
    lies.each {|boolean| all_lies = true if boolean == false}
    assert all_lies
  end

  def test_all_multiples_of_7
    all_multiples_of_7 = false
    numbers = [42, 14, 35, 49, 28, 56, 21, 7]
    numbers.each do |num|
      all_multiples_of_7 = true if num % 7 == 0
    end
    assert all_multiples_of_7
  end

  def test_not_all_3_digits_long
    all_3_digits = true
    numbers = [981, 831, 509, 332, 892, 8999, 110]
    numbers.each {|num| all_3_digits = false unless num.size == 3}
    refute all_3_digits
  end

  def test_all_4_letter_words
    all_4_letters = false
    words = ["love", "hate", "fire", "bird", "call"]
    words.each do |word|
      all_4_letters = true if word.size == 4
    end
    assert all_4_letters
  end

end
