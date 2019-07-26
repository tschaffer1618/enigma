require 'date'
require './modules/string_generator'

class Enigma
  include StringGenerator

  def encrypt(message_string, number_string = random_number_string, date_string = today)
    key = Key.new(number_string)
    offset = Offset.new(date_string)
    shift = Shift.new(key, offset)
    message = Message.new(message_string)
    {encryption: message.apply_shift(shift), key: number_string, date: date_string}
  end
end
