MAXN = 1005
MAXV = MAXN * (MAXN - 1) / 2
to = []
id = []

def toId(i, j)
  j, i = i, j if (i > j)

  id[i][j]
end

# 選手と試合セット
N = gets.to_i
games = Array.new (N) { gets.chomp.split.map(&:to_i).map {|n| n - 1 } }

# 頂点数
v = 0
# 試合にIDを割り振る
N.times do |i|
  (N-1).times do |j|
    v += 1
    id[i] ||= []
    id[i][j] = v
  end
end


p id