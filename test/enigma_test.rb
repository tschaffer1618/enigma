require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_attributes
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
      "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "], @enigma.characters
  end 

  def test_random_number_string
    assert_instance_of String, @enigma.random_number_string
    assert_equal 5, @enigma.random_number_string.length
  end

  def test_today
    assert_instance_of String, @enigma.today
    assert_equal 6, @enigma.today.length
  end
end
