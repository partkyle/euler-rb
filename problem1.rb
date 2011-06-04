require "util"

result = (1..1000).find_all do |item|
  item % 3 == 0 or item % 5 == 0
end.sum

puts result

# 234168