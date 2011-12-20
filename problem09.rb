def sum_thou
  for a in 1..1000
    for b in 1..1000
      for c in 1..1000
        yield a,b,c if a + b + c == 1000
      end
    end
  end
end

sum_thou do |a,b,c|
  puts a * b * c if (a**2) + (b**2) == (c**2)
end

# 31875000