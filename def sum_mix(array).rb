=begin
Instruction:
Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.
Return your answer as a number.
=end


# Create the method to sum numbers in an array.

def sum_mix(x)                 # x=[]
  integer = x.map(&:to_i)      #turn each string into interger
  integer.inject(0, :+)        #sum up the intergers
end

# Calling the method for testing (using "p" method to view debug output):

p sum_mix(x =[9, 3, '7', '3'])


