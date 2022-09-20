=begin
Given a set of numbers, return the additive inverse of each. Each positive becomes negatives, and the negatives become positives.

invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
invert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]
invert([]) == []
You can assume that all values are integers. Do not mutate the input array/list.

=end

# Creating the method

def invert(list)
  list.map {|number| -number}
end


# Calling the method for testing (using "p" method to view debug output):

p invert([1,2,3,4,5])
