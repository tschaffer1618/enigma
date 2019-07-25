require 'date'

class Enigma

  def random_key
    ('%005d' % rand(10 ** 5)).to_i
  end

  def today
    date = Date.today
    day = ('%002d' % date.mday).to_s
    month = ('%002d' % date.mon).to_s
    year = date.year.to_s[2..3]
    (day + month + year).to_i
  end

  def encrypt(message, key = random_key, date = today)
  end
end
