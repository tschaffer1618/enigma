require './test/test_helper'

class ShiftTest < Minitest::Test
  def setup
    @key = Key.new("35171")
    @offset = Offset.new("220817")
    @shift = Shift.new(@key, @offset)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_attributes
    assert_equal @key, @shift.key
    assert_equal @offset, @shift.offset
  end

  def test_split_shifts
    expected = {a: 42, b: 55, c: 25, d: 80}
    assert_equal expected, @shift.split_shifts
  end
end
