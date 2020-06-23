N, K = gets.chomp.split.map(&:to_i)
people = Array.new(N, false)
K.times do
  _d = gets
  gets.chomp.split.map{|i| i.to_i - 1 }.each do |n|
    people[n] = true
  end
end
puts people.count(false)