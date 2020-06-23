A, B, C, D = gets.chomp.split.map(&:to_i)
t_to_win = (C.to_f/B).ceil
a_to_win = (A.to_f/D).ceil
if t_to_win <= a_to_win
  puts "Yes"
else
  puts "No"
end
