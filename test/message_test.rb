require './test/test_helper'

class MessageTest < Minitest::Test
  def setup
    @message =  Message.new("Hello World!")
    @key = Key.new("02715")
    @offset = Offset.new("040895")
    @shift = Shift.new(@key, @offset)
  end

  def test_it_exists
    assert_instance_of Message, @message
  end

  def test_attributes
    assert_equal "Hello World!", @message.message_string
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i",
                  "j", "k", "l", "m", "n", "o", "p", "q", "r",
                  "s", "t", "u", "v", "w", "x", "y", "z", " "], @message.characters
  end

  def test_convert_to_array
    assert_equal ["h", "e", "l", "l", "o",
              " ", "w", "o", "r", "l", "d", "!"], @message.convert_to_array
  end

  def test_apply_shift
    assert_equal "keder ohulw!", @message.apply_shift(@shift)
  end
end
