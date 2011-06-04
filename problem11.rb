require "util"

class Array
  def remove_zeros!
    self.map! { |i| i.to_i }.reject! { |i| i == 0 }
  end
end

def diagonals
  file = open('files/problem11.txt')

  lines = []
  file.read().each do |s|
    lines.push s.split
  end

  for x in 0..(lines.length - 1)
    for y in 0..(lines[x].length - 1)
      lefts, rights, verts, horiz = Array.new, Array.new, Array.new, Array.new
      4.times do |i|
        lefts << lines[x+i][y+i] if lines[x+i]
        rights << lines[x+3-i][y+i] if lines[x+3-i]
        horiz << lines[x][y+i] if lines[x]
        verts << lines[x+i][y] if lines[x+i]
      end
      lefts.remove_zeros!
      rights.remove_zeros!
      verts.remove_zeros!
      horiz.remove_zeros!
      yield lefts if lefts.size == 4
      yield rights if rights.size == 4
      yield verts if verts.size == 4
      yield horiz if horiz.size == 4
    end
  end
end

max = 0
diagonals do |i|
  temp = i.map { |e| e.to_i }.inject { |prod, x| prod * x }
  max = temp if max < temp
end

puts max

# 70600674