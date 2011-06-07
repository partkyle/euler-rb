class Array
  def sum
    self.inject do |sum, x|
      sum + x
    end
  end
end

class Fixnum
  def prime?
    prime = true
    if self > 2
      (2..Math.sqrt(self).ceil).each do |i|
        if self % i == 0
          prime = false 
          break
        end
      end
    end
    prime
  end
  def factorial
    (1..self).inject { |x,y| x*y }
  end
  def factors
    (1..Math.sqrt(self)).collect { |i|
      [i, (self / i)] if self % i
    }.flatten.uniq.sort
  end
end