N, K = gets.chomp.split.map(&:to_i)
friends = gets.chomp.split.map(&:to_i)

puts friends.count {|height| height >= K }

