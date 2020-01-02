D = gets.chomp.to_i

answer = 
    case D
    when 25
        "Christmas"
    when 24
        "Christmas Eve"
    when 23
        "Christmas Eve Eve"
    when 22
        "Christmas Eve Eve Eve"
    end

puts answer