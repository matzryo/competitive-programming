gets
S = gets.chomp
K = gets.chomp.to_i
c =  S[K - 1]
ret = S.gsub(/[^#{c}]/, '*')
puts ret
