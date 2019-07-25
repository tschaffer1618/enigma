require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
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
