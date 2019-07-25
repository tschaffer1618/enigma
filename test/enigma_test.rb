require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_random_key
    assert_instance_of Integer, @enigma.random_key
    assert_equal 5, @enigma.random_key.digits.size
  end

  def test_today
    assert_instance_of Integer, @enigma.today
    assert_equal 6, @enigma.today.digits.size
  end
end
