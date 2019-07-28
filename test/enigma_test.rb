require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_random_number_string
    assert_instance_of String, @enigma.random_number_string
    assert_equal 5, @enigma.random_number_string.length
  end

  def test_today
    assert_instance_of String, @enigma.today
    assert_equal 6, @enigma.today.length
  end

  def test_encrypt
    expected = {:encryption=>"keder ohulw", :key=>"02715", :date=>"040895"}
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")

    @enigma.stubs(:today).returns("040895")
    assert_equal expected, @enigma.encrypt("hello world", "02715")

    @enigma.stubs(:random_number_string).returns("02715")
    assert_equal expected, @enigma.encrypt("hello world")
  end

  def test_decrypt
    expected = {:decryption=>"hello world", :key=>"02715", :date=>"040895"}
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")

    @enigma.stubs(:today).returns("040895")
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715")
  end

  def test_brute_force_crack
    expected = {encryption: "vjqtbeaweqihssi", key: "08304", date: "291018"}
    assert_equal expected, @enigma.encrypt("hello world end", "08304", "291018")

    expected_2 = {decryption: "hello world end", date: "291018", key: "08304"}
    assert_equal expected_2, @enigma.crack("vjqtbeaweqihssi", "291018")

    @enigma.stubs(:today).returns("291018")
    assert_equal expected_2, @enigma.crack("vjqtbeaweqihssi")
  end
end
