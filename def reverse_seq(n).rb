=begin

Build a function that returns an array of integers from n to 1 where n>0.

Example : n=5 --> [5,4,3,2,1]

=end


# Creating the method

def reverse_seq(n)
    (1..n).to_a.reverse!
end

# Calling the method for testing (using "p" method to view debug output):

p reverse_seq(5)
