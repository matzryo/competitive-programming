N = gets.to_i

ans =
  if N.even?
    0.5
  else
    (N + 1).to_f / (2 * N)
  end

puts ans
