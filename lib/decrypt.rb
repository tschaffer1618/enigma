require './lib/key'
require './lib/offset'
require './lib/shift'
require './lib/message'
require './lib/enigma'

handle = File.open(ARGV[0], "r")

incoming_encryption = handle.read

handle.close

enigma = Enigma.new
decryption = enigma.decrypt(incoming_encryption, ARGV[2].to_s, ARGV[3].to_s)

writer = File.open(ARGV[1], "w")

writer.write(decryption[:decryption])

writer.close

puts "Created 'decrypted.txt' with the key #{decryption[:key].to_i} and date #{decryption[:date].to_i}"
