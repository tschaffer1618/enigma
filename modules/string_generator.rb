module StringGenerator

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
end 