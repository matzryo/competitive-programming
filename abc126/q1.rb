N,K = gets.chomp.split.map(&:to_i)
s = gets.chomp
s[K-1] = s[K-1].downcase

puts s
