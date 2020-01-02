N = gets.chomp.to_i
lines = gets.chomp.split.map(&:to_i).sort

count = 0
lines[0...N].each_with_index do |b, bi|
  lines[0...bi].each do |a|
    c_candidates = lines[(bi+1)..N]
    ci_to = c_candidates.bsearch_index {|c| c >= a + b}
    # インデックス(ci_to - 1)までは三角形が成立する
    if ci_to.nil?
      count += c_candidates.length
    else
      # 全部成立する
      count += ci_to
    end
  end
end
puts count
