require './test/test_helper'

class KeyTest < Minitest::Test
  def setup
    @key = Key.new(35171)
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_attributes
    assert_equal 35171, @key.number
  end

  def test_split_into_four
    expected = {a: 35, b: 51, c: 17, d: 71}
    assert_equal expected, @key.split_keys
  end
end
