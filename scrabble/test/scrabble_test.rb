gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.score("a")
    assert_equal 4, Scrabble.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 8, Scrabble.score("hello")
  end

  def test_score_method_can_handle_nil
    skip
    assert 0, Scrabble.score(nil)
  end

  def test_score_method_can_handle_empty_string
    skip
    assert 0, Scrabble.score("")
  end

  def test_score_word_method_returns_back_multiplied_value
    skip
    assert_equal 9, Scrabble.score_word("hello", [1,2,1,1,1])
  end

  def test_numbers_array_actually_returns_me_back_array_of_numbers
    skip
    assert_equal [4,1,1,1,1], Scrabble.numbers_array("hello")
  end

  def test_array_word_returns_back_array_upcase_numbers
    skip
    assert_equal ["H", "E", "L", "L", "O"], Scrabble.array_word("hello")
  end
end
