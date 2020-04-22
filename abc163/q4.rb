# 1ずつ増える等差数列の和を返す
# rが右端、lが右端
def sum(l, r)
  (l+r)*(r-l+1)/2
end

B = 10**9 +7
N, K = gets.chomp.split.map(&:to_i)

ans = 0
K.upto(N+1) do |k|
  r_sum = sum(N+1-k, N)
  l_sum = sum(0, k-1)
  ans += r_sum - l_sum + 1
  ans = ans.modulo(B)
end
puts ans

