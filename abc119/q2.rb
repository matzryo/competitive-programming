# RubyのFloatの精度は環境依存、一般にはせいぜい15桁
BTC_YEN_RATE = 380000.0
JPY = 'JPY'
BTC = 'BTC'
N = gets.chomp.to_i
gifts = Array.new(N) do
  x, u = gets.chomp.split
  case u
  when JPY
    x.to_i
  when BTC
    x.to_f * BTC_YEN_RATE
  end
end
puts gifts.inject(&:+)
