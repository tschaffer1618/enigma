class Key
  attr_reader :number_string

  def initialize(number_string)
    @number_string = number_string
  end

  def split_keys
    { a: number_string[0..1].to_i,
      b: number_string[1..2].to_i,
      c: number_string[2..3].to_i,
      d: number_string[3..4].to_i }
  end
end
