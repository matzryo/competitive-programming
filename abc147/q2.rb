s = gets.chomp
diff = 0
(s.length / 2).times do |i|
  if s[i] != s[-i-1]
    diff += 1
  end
end
puts diff