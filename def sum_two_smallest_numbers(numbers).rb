=begin
Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed.

For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7.

[10, 343445353, 3453445, 3453545353453] should return 3453455.
=end



# Creating the method

def sum_two_smallest_numbers(numbers)
  numbers.sort.shift(2).sum
end


# Calling the method for testing (using "p" method to view debug output):

p sum_two_smallest_numbers([1,2,3,4,5])
