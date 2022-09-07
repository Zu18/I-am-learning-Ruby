=begin

Given an array of integers, return a new array with each value doubled.

For example:

[1, 2, 3] --> [2, 4, 6]

=end


# Creating the method

def maps(array)
  array.map{|x| x*2 }
end


# Calling the method for testing(using "p" method to view debug output):

p maps([1, 2, 3])
