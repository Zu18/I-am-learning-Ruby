=begin

Given an array of numbers, which are perfect squares?
Given an array of numbers return an array of numbers from the array that qualify as perfect squares.
A perfect square is defined as a whole number that, when square rooted, is a whole number.
(Such as 1, 4, 9, 16, etc, etc.)

Note: Return only one copy of each perfect square in ascending order

get_squares(1..16) # => [1, 4, 9, 16]
get_squares(1..100) # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

=end

# sort an array in ascending order; remove the duplicate elements from an array.
# modulus from the root of number must be zero
def get_squares(array)
  new_array =[]
  for number in array.sort.uniq
    if number % Math.sqrt(number) == 0
      new_array << number
    end
  end
  new_array
end

# Calling the method for testing (using "p" method to view debug output):
p get_squares([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1])

