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
    expected = {a_key: 35, b_key: 51, c_key: 17, d_key: 71}
    assert_equal expected, @key.split
  end
end
