K, N = gets.chomp.split.map(&:to_i)
houses = gets.chomp.split.map(&:to_i)
distances = N.times.map do |n|
  d = houses[n] - houses[n-1]
  d < 0 ? d + K : d
end
puts K - distances.max