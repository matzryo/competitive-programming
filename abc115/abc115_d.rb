P = 1
B = 0

def rect_barger(n)
    if n == 0
        [P]
    else
         [B, *rect_barger(n - 1), P, *rect_barger(n - 1), B]
    end
end

N, X = gets.chomp.split.map(&:to_i)
puts rect_barger(N).slice(0, X).sum