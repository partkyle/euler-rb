def odd_even(n)
  a = Array.new
  while n > 1
    if n % 2 == 0
      a << n = n / 2
    else 
      a << n = 3 * n + 1
    end
  end
  a
end

max = 0
num = 0
(1..1000000).each do |i|
  size = odd_even(i).size
  if max < size
    max = size
    num = i
  end
end

puts num