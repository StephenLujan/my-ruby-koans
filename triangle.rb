# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  [a, b, c].each { |side| raise TriangleError, "All sides must be greater than 0." if side <= 0 }
  if a >= b + c or b >= a + c or c >= a + b
    raise TriangleError, "No side may be greater than the sum of the others."
  end

  if a == b and b == c # a == b == c  ruby too lame for this
    return :equilateral
  end
  if a == b or a == c or b == c
    return :isosceles
  end
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
