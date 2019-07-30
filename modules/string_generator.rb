module StringGenerator

  def random_number_string
    rand(10 ** 5).to_s.rjust(5, "0")
  end

  def today
    date = Date.today
    day = date.mday.to_s.rjust(2, "0")
    month = date.mon.to_s.rjust(2, "0")
    year = date.year.to_s[2..3]
    day + month + year
  end

  def all_possible_key_strings
    array = (0..99999).to_a
    array.map { |number| number.to_s.rjust(5, "0") }
  end
end
