S = gets.chomp.split("")

chars = S.uniq

if chars.length == 2 && S.count(chars[0]) == 2 && S.count(chars[1] == 2)
  puts 'Yes'
else
  puts 'No'
end