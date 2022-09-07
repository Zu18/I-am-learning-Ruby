=begin

Given a non-empty array of integers, return the result of multiplying the values together in order. Example:

[1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24

=end



#Creating the method

def grow(x)
  x.inject(:*)      
end

# Calling the method for testing(using "p" method to view debug output):

p grow([1, 2, 3, 4])

