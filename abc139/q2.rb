N = gets.to_i
H = gets.chomp.split.map(&:to_i)

max = 0
count = 0
(N-1).times do |i|
  if H[i+1] <= H[i]
    count += 1
  else
    max = [count,max].max
    count = 0
  end
end

max = [count,max].max

puts max
