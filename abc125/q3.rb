N = gets.chomp.to_i
numbers = gets.split.map(&:to_i)

gcd_l = [0]
(N).times do |n|
  gcd_l.push gcd_l[n].gcd(numbers[n])
end

gcd_r = [0]
N.times do |n|
  gcd_r.unshift gcd_r.first.gcd(numbers[N-1-n])
end

gcds = []
N.times do |i|
  gcds.push gcd_l[i].gcd gcd_r[i+1]
end

puts gcds.max

