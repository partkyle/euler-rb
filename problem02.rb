require "util"

def fib_even(n, &block)
  yield fibn_1 = 1
  yield fibn = 1
  while fibn < n
    fibn, fibn_1 = fibn+fibn_1, fibn
    yield fibn if fibn.even?
  end
end

sum = 0
fib_even(4000000) do |x|
  sum += x
end

puts sum 

# 4613734