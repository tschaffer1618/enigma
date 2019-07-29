require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/message'
require './lib/enigma'

handle = File.open(ARGV[0], "r")

incoming_encryption = handle.read

handle.close

enigma = Enigma.new
crack = enigma.crack(incoming_encryption, ARGV[2].to_s)

writer = File.open(ARGV[1], "w")

writer.write(crack[:decryption])

writer.close

puts "Created 'cracked.txt' with the cracked key #{crack[:key].to_i} and date #{crack[:date].to_i}"
