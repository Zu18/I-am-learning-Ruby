=begin

Square(n)Sum

Complete the square sum function so that it squares each number passed into it and then sums the results together.
For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.

=end



# Creating the square sum method:

def square_sum(numbers)                         #numbers = []
  numbers.map{|num| num**2}.inject(0, :+)       #"map" creates an array,it will contain the squares, "inject" sums up the numbers
end



# Calling the method for testing (using "p" method to view debug output):

p square_sum(numbers =[1, 2, 3])
