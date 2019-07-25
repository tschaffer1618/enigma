require './test/test_helper'

class OffsetTest < Minitest::Test
  def setup
    @offset = Offset.new(220817)
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_attributes
    assert_equal 220817, @offset.number
  end

  def test_square
    assert_equal 48_760_147_489, @offset.square
  end

  def test_last_four_digits
    assert_equal 7489, @offset.last_four_digits
  end

  def split
    expected = {a: 7, b: 4, c: 8, d: 9}
    assert_equal expected, @offset.split
  end 
end
