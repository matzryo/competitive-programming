WHITE = '.'
BLACK = '#'

N = gets.chomp.to_i
S = gets.chomp

whites = S.count(WHITE)

# しゃくとり法
# 全部白にする場合の要変更数をセット
cumulative = [whites]

N.times do |i|
  cumulative[i + 1] =
    if S[i] == BLACK
      cumulative[i] + 1
    else
      cumulative[i] - 1
    end
end

puts cumulative.min


