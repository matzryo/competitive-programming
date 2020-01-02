N, K = gets.chomp.split.map(&:to_i)
trees = []
N.times do
    trees.push gets.chomp.to_i
end

trees.sort!

diffs = []

(N - K + 1).times do |i|
    diffs.push trees[i + K - 1] - trees[i]
end

puts diffs.min