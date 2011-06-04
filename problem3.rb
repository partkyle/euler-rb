require "util"

def factors(num)
  (1..Math.sqrt(num)).each do |i|
    yield i if num % i == 0
  end
end


factors(600851475143) do |i|
  puts i if i.prime?
end

# 6857