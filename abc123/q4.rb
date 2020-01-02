X, Y, Z, K = gets.chomp.split(" ").map(&:to_i)

cakes_a = gets.chomp.split(" ").map(&:to_i).sort.reverse
cakes_b = gets.chomp.split(" ").map(&:to_i).sort.reverse
cakes_c = gets.chomp.split(" ").map(&:to_i).sort.reverse

priority_queue = []
priority_queue.pushh
sums = []
cakes_a.each_with_index do |a, a_i|
  cakes_b.each_with_index do |b, b_i|
    break if (a_i + 1 ) * (b_i + 1) > K
    cakes_c.each_with_index do |c, c_i|
      break if (a_i + 1 ) * (b_i + 1) * (c_i + 1 ) > K
      sums.push a + b + c
    end
  end
end

puts sums.sort.reverse.slice(0...K)
