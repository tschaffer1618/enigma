class Message
  attr_reader :message_string, :characters

  def initialize(message_string)
    @message_string = message_string
    @characters = ("a".."z").to_a << " "
  end

  def convert_to_array
    @message_string.downcase.split("")
  end

  def apply_shift(shift)
    new_array = convert_to_array.each_with_index.map do |char, i|
      index = @characters.find_index(char)
      if !@characters.include?(char)
        char
      elsif i % 4 == 0
        char = @characters.rotate(shift.split_shifts[:a])[index]
      elsif i % 4 == 1
        char = @characters.rotate(shift.split_shifts[:b])[index]
      elsif i % 4 == 2
        char = @characters.rotate(shift.split_shifts[:c])[index]
      else
        char = @characters.rotate(shift.split_shifts[:d])[index]
      end
    end
    new_array.join
  end

  def remove_shift(shift)
    new_array = convert_to_array.each_with_index.map do |char, i|
      index = @characters.find_index(char)
      if !@characters.include?(char)
        char
      elsif i % 4 == 0
        char = @characters.rotate(-shift.split_shifts[:a])[index]
      elsif i % 4 == 1
        char = @characters.rotate(-shift.split_shifts[:b])[index]
      elsif i % 4 == 2
        char = @characters.rotate(-shift.split_shifts[:c])[index]
      else
        char = @characters.rotate(-shift.split_shifts[:d])[index]
      end
    end
    new_array.join
  end
end
