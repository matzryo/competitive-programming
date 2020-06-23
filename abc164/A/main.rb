S, W = gets.chomp.split.map(&:to_i)
if W >= S
  puts "unsafe"
else
  puts "safe"
end