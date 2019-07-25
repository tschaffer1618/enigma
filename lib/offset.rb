class Offset
  attr_reader :date_string

  def initialize(date_string)
    @date_string = date_string
  end

  def square
    @date_string.to_i ** 2
  end

  def last_four_digits
    square.to_s[-4..-1]
  end

  def split_offsets
    { a: last_four_digits[0].to_i,
      b: last_four_digits[1].to_i,
      c: last_four_digits[2].to_i,
      d: last_four_digits[3].to_i }
  end
end
