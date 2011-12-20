file = open('files/problem8.txt')
num = file.read().inject { |s, x| s.strip + x.strip }

max = 0

for i in 1..(num.length - 5)
  product = 1
  5.times do |t|
    product *= num[(t + i)..(t + i)].to_i
  end
  max = product if product > max
end

puts max

# 40824