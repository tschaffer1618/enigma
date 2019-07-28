require './test/test_helper'

class MessageTest < Minitest::Test
  def setup
    @message_1 =  Message.new("Hello World!")
    @message_2 = Message.new("keder ohulw!")
    @key = Key.new("02715")
    @offset = Offset.new("040895")
    @shift = Shift.new(@key, @offset)
  end

  def test_it_exists
    assert_instance_of Message, @message_1
  end

  def test_attributes
    assert_equal "Hello World!", @message_1.message_string
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i",
                  "j", "k", "l", "m", "n", "o", "p", "q", "r",
                  "s", "t", "u", "v", "w", "x", "y", "z", " "], @message_1.characters
  end

  def test_convert_to_array
    assert_equal ["h", "e", "l", "l", "o",
              " ", "w", "o", "r", "l", "d", "!"], @message_1.convert_to_array
  end

  def test_apply_shift
    assert_equal "keder ohulw!", @message_1.apply_shift(@shift)
  end

  def test_remove_shift
    assert_equal "hello world!", @message_2.remove_shift(@shift)
  end 
end
