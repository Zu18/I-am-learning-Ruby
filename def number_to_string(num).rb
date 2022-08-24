=begin
Convert a Number to a String!

We need a function that can transform a number (integer) into a string.
What ways of achieving this do you know?
Examples (input --> output):
123  --> "123"
999  --> "999"
-100 --> "-100"
=end


# Creating the method tham will convert a Number to a String.

def number_to_string(num)
  num.to_s                       
end


# Calling the method for testing (using "p" method to view debug output):

p number_to_string(123)

