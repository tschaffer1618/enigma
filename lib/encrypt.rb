require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/message'
require './lib/enigma'

handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

enigma = Enigma.new
encryption = enigma.encrypt(incoming_text.chomp)

writer = File.open(ARGV[1], "w")

writer.write(encryption[:encryption])

writer.close

puts "Created 'encrypted.txt' with the key #{encryption[:key].to_i} and date #{encryption[:date].to_i}"
