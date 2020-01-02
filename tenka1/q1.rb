A,B,C = gets.chomp.split.map(&:to_i)
a, b = [A, B].sort
answer =
  if (a..b).include?(C)
    "Yes"
  else
    "No"
  end
puts answer
