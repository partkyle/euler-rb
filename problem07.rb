require "util"

def primes(n)
  i = 1
  cur = 2
  while i < n
    prime = false
    while prime == false
      prime = (cur += 1).prime?
    end
    i += 1
  end
  cur
end

puts primes(10001)

# 104743