class Offset
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square
    @number ** 2
  end

  def last_four_digits
    square.to_s[-4..-1].to_i
  end

  def split
    { a: last_four_digits.to_s[0].to_i,
      b: last_four_digits.to_s[1].to_i,
      c: last_four_digits.to_s[2].to_i,
      d: last_four_digits.to_s[3].to_i }
  end
end
