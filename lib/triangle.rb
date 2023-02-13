class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3

  def initialize(s1,s2,s3)
    @s1=s1
    @s2=s2
    @s3=s3
  end
def kind 
    check_triangle
  if self.s1 ==self.s2 && self.s2 ==self.s3
   :equilateral
  elsif self.s1 ==self.s2 || self.s1 ==self.s3 || self.s2 ==self.s3
    :isosceles
  elsif self.s1 !=self.s2 && self.s2 != self.s3 && self.s1 != self.s3
    :scalene
  end
end

def side_greater_than_zero?
  @s1 > 0 && @s2 >0 && @s3>0
end

def check_triangle_inequity?
  s1 + s2 > s3 && s1 + s3 >s2 && s2 + s3 >s1
end

def check_triangle
  raise TriangleError if !side_greater_than_zero? || !check_triangle_inequity?
end


  class TriangleError <StandardError
  end
    
end
