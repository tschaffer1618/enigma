require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
end

require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'

require 'pry'

require './lib/enigma'
require './lib/key'
require './lib/offset'
require './lib/shift'
