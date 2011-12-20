require "util"

# square of sums
sum_squares = (1..100).inject { |x,y| x+y } ** 2

square_sums = (1..100).map { |i| i ** 2 }.sum

puts (square_sums - sum_squares).abs

# 25164150