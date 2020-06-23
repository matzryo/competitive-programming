require 'set'

words = Set.new
N = gets.chomp.to_i
N.times { words.add(gets.chomp) }
puts words.size