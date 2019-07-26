require 'date'

class Enigma

  def random_number_string
    ('%005d' % rand(10 ** 5))
  end

  def today
    date = Date.today
    day = ('%002d' % date.mday).to_s
    month = ('%002d' % date.mon).to_s
    year = date.year.to_s[2..3]
    day + month + year
  end

  def encrypt(message_string, number_string = random_number_string, date_string = today)
    key = Key.new(number_string)
    offset = Offset.new(date_string)
    shift = Shift.new(key, offset)
    message = Message.new(message_string)
    {encryption: message.apply_shift(shift), key: number_string, date: date_string}
  end
end
