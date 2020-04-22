N = gets.chomp.to_i

puts (1..N).
    filter{ |n| !n.modulo(3).zero? && !n.modulo(5).zero?}.
    sum

