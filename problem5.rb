n = 0
while true
  n += 20
  found = true
  (1..21).each do |i|
    if n % i != 0
      found = false
      break
    end
  end
  puts n if n % 1000000 == 0
  break if found
end

puts n

# 232792560