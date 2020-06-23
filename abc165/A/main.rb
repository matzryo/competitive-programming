K = gets.chomp.to_i
A, B = gets.chomp.split.map(&:to_i)
time = B / K
if K * time >= A
  puts "OK"
else
  puts "NG"
end

