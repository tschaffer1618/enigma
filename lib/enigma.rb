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

  def decrypt(message_string, number_string, date_string = today)
    key = Key.new(number_string)
    offset = Offset.new(date_string)
    shift = Shift.new(key, offset)
    message = Message.new(message_string)
    {decryption: message.remove_shift(shift), key: number_string, date: date_string}
  end

  #brute force
  def all_possible_key_strings
    array = (0..99999).to_a
    array.map { |number| number.to_s.rjust(5, "0") }
  end

  def crack(message_string, date_string =  today)
    offset = Offset.new(date_string)
    message = Message.new(message_string)
    the_one = all_possible_key_strings.find do |number_string|
      key = Key.new(number_string)
      shift = Shift.new(key, offset)
      message.remove_shift(shift)[-4..-1] == " end"
    end
    key = Key.new(the_one)
    shift = Shift.new(key, offset)
    {decryption: message.remove_shift(shift), date: date_string, key: the_one}
  end
end
