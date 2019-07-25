class Key
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def split
    { a: number.to_s[0..1].to_i,
      b: number.to_s[1..2].to_i,
      c: number.to_s[2..3].to_i,
      d: number.to_s[3..4].to_i }
  end
end
