N = gets.chomp.to_i
values = gets.chomp.split.map(&:to_i)
costs = gets.chomp.split.map(&:to_i)

diffs = [0]
N.times do |i|
  diffs.push (values[i] - costs[i])
end
puts diffs
      .select{|d| d >= 0 }
      .inject(&:+)



