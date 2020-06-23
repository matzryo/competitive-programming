N, K = gets.chomp.split.map(&:to_i)
remainder = N % K
puts [remainder, K - remainder].min
