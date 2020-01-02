N, M = gets.chomp.split.map(&:to_i)

costs = []
boxes = Array.new(N) { [] }

M.times do |key|
  cost, _n_of_boxes = gets.chomp.split.map(&:to_i)
  costs.push cost
  bs = gets.chomp.split.map(&:to_i)
  bs.each do |bx|
    boxes[bx - 1].push key
  end
end

if boxes.any?(&:empty?)
  puts -1
  exit
end

p boxes, costs
