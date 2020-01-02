require 'matrix'

N = gets.chomp.to_i

mat = []

N.times do |i|
  ary = Array.new(N) { 0 }
  ary[i] = 1
  ary[(i+1)%N] = 1
  mat.push ary
end

returns = gets.chomp.split.map {|v| v.to_i * 2 }

puts Matrix[*mat]
         .lup
         .solve(returns)
         .map(&:to_i)
         .to_a
         .join(" ")

