A, B = gets.chomp.split.map(&:to_i)

if A == B
  puts A * 2
else
  greater = [A, B].sort.last
  puts greater * 2 - 1
end
