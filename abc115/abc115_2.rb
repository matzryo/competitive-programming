N = gets.chomp.to_i
prices = []
N.times do
    prices.push gets.chomp.to_i
end

puts prices.inject(&:+) - (prices.max / 2)