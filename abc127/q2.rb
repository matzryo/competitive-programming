r,D,x2000 = gets.chomp.split.map(&:to_i)

x = x2000
10.times do
  x = r * x - D
  puts x
end