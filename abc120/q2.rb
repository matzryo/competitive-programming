def find_divisor(n)
  (1..n).select{|i| n % i == 0}
end

A, B, K = gets.chomp.split.map(&:to_i)

a = find_divisor(A)
b = find_divisor(B)

puts (a & b).sort.reverse.at(K - 1)
