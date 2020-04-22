N, K = gets.chomp.split.map(&:to_i)
nums = (0..N).to_a

big = nums.slice((N-K+1)..N).sum
small = nums.slice(0..(K-1)).sum
diff = big - small + 1

((K+1)..(N+1)).each do |k|
  big += nums[-k]
  small += nums[k-1]
  diff += big - small + 1
end
puts diff

