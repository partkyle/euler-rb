require "util"

def primes(n)
  (2..n).each do |i|
    yield i if i.prime?
  end
end

a = []
primes(2000000) { |i| a.push(i) }

puts a.sum

# 142913828922