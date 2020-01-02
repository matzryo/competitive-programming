N = gets.chomp
if N.to_s.match(/3/) || N.to_i.modulo(3).zero?
  puts 'YES'
else
  puts 'NO'
end
