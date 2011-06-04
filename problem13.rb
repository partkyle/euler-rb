require "util"

file = open('files/problem13.txt')

numbers = file.read().map { |i| i.to_i }

puts numbers.sum.to_s[0..9]

# 5537376230