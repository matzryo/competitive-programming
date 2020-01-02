antennas = Array.new(5) do
  gets.chomp.to_i
end
k = gets.chomp.to_i

max_diff = antennas
                .combination(2)
                .map{|a,b| (a - b).abs}
                .sort
                .max

if max_diff <= k
  puts 'Yay!'
else
  puts ':('
end

