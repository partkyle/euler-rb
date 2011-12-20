def thou_by_thou
  (100...1000).each do |i|
    (100..1000).each do |j|
      yield i * j
    end
  end
end

a = []
thou_by_thou do |i|
  a.push(i) if i.to_s == i.to_s.reverse
end

puts a.sort.last

# 906609