S = gets.chomp
YEAR = 2019
multiples = 1.upto(50000).map {|m| YEAR * m }.map(&:to_s).filter{|num| !num.include?("0")}
count = 0
multiples.each do |num|
  position = 0
  while i = S.index(num, position)
    count += 1
    position = i+1
  end
end
puts count
