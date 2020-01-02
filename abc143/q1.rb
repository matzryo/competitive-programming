A, B = gets.chomp.split.map(&:to_i)
sukima = A - 2 * B
answer = sukima > 0 ? sukima : 0
puts answer
