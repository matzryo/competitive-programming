require 'bigdecimal'

orders = Array.new(5) do
  gets.chomp.to_i
end

orders  = orders.sort_by do |i|
  if i % 10 == 0
    10
  else
    i % 10
  end
  (i + 9) / 10 * 10
end


first = orders.shift
puts first + orders.map{|i| BigDecimal(i).ceil(-1).to_i}.inject(:+)
