N = gets.to_i
students = gets.chomp.split.map(&:to_i)

order = Array.new(N)

students.each_with_index do |number, index|
  order[number - 1] = index + 1
end

puts order.join(" ")
