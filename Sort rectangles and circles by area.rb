=begin
Sort rectangles and circles by area:

In this kata you will be given a sequence of the dimensions of rectangles ( sequence with width and length ) and circles ( radius - just a number ).
Your task is to return a new sequence of dimensions, sorted ascending by area.

For example,
seq = [ [4.23, 6.43], 1.23, 3.444, [1.342, 3.212] ] # [ rectangle, circle, circle, rectangle ]
sort_by_area(seq) => [ [1.342, 3.212], 1.23, [4.23, 6.43], 3.444 ]

This kata inspired by Sort rectangles and circles by area.

=end

# Creating the method
def sort_by_area(array)
  hash = {}
  array.each do |x|
    if x.class != Array
      # area_circle = 3.14 * r * r
      area = 3.14 * x * x
    else
      # area_rectangle = width * length
      area = x[0]*x[1]
    end
    hash[x] = area
  end
  hash.sort_by {|key, value| value}.to_h.keys
end

# Calling the method for testing (using "p" method to view debug output):
p sort_by_area([ [4.23, 6.43], 1.23, 3.444, [1.342, 3.212] ])