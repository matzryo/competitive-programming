N = gets.chomp.to_i
bosses = gets.chomp.split.map(&:to_i)
counts = Array.new(N, 0)
bosses.each do |leader|
  counts[leader-1] += 1
end
puts counts
