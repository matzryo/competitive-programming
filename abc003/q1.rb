SALARY_UNIT = 10_000

x = gets.chomp.to_i
expected_outcome = (1..x).inject(&:+).to_f / x

puts  SALARY_UNIT * expected_outcome
