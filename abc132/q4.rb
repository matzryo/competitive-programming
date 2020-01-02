class Integer
  @@my_factorial_memo = [1]
  def combination(k)
    return 1 if k.zero?

    self.factorial / ((self - k).factorial * k.factorial)
  end

  def factorial
    unless @@my_factorial_memo[self].nil?
      return @@my_factorial_memo[self]
    end

    ans = (1..self).inject(:*)
    @@my_factorial_memo[self] = ans
    ans
  end
end

TEISU = 1_000_000_007

N,K = gets.chomp.split.map(&:to_i)

1.upto(K) do |i|
  where = (N-K+1).combination(i) % TEISU
  how = (K-1).combination(i-1) % TEISU
  puts (where * how) % TEISU
end
