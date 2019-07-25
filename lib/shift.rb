class Shift
  attr_reader :key, :offset

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def split_shifts
    @key.split_keys.merge(@offset.split_offsets) do |letter, key_number, offset_number|
      key_number + offset_number
    end
  end
end
