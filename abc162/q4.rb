N = gets.chomp.to_i
S = gets.chomp

count = 0
S.each_char.with_index do |char, ri|
  if char != "R"
    next
  end
  S.slice((ri+1)..(N-1)).each_char.with_index do |char, gi|
    if char != "G"
      next
    end
    S.slice((ri+1+gi+1)..(N-1)).each_char.with_index do |char, bi|
      if char != "B"
        next
      end
      # if gi != bi
        count += 1
      # end
    end

  end
end
puts count