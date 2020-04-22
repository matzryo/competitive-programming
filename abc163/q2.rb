N, M = gets.chomp.split.map(&:to_i)
DAYS = gets.chomp.split.map(&:to_i)

rest = N - DAYS.sum
if rest < 0
  puts -1
else
  puts rest
end
