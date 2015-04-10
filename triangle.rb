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

# Draft 1:
# def triangle(a, b, c)
#   if a == b && b == c && c == a
#     :equilateral
#   elsif a != b && b != c && c != a
#     :scalene
#   else
#     :isosceles
#   end
# end

def triangle(a, b, c)
  raise TriangleError if [a, b, c].any?{ |value| value <= 0 }
  # Draft 1:
  # Geometry Rule XYZ: any combination of two sides should be greater than the
  # third
  raise TriangleError unless (a + b) > c && (b + c) > a && (a + c) > b
  # Draft 2:
  # values = [a, b, c].sort
  # raise TriangleError unless values[0] + values[1] > values[2]

  sides_equal = [ a == b, b == c, c == a]
  if sides_equal.all?
    :equilateral
  elsif sides_equal.none?
    :scalene
  else
    :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
