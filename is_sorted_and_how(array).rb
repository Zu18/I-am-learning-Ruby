=begin
Sorted? yes? no? how?

Complete the method which accepts an array of integers, and returns one of the following:
    "yes, ascending" - if the numbers in the array are sorted in an ascending order
    "yes, descending" - if the numbers in the array are sorted in a descending order
    "no" - otherwise
You can assume the array will always be valid, and there will always be one correct answer.

=end


def is_sorted_and_how(array)
  ascending = array.sort{|first_number, second_number| first_number <=> second_number}
  descending = array.sort{|first_number, second_number| second_number <=> first_number }
    if array == ascending
       "yes, ascending"
    elsif array == descending
      "yes, descending"
    else
      "no"
    end
end

p is_sorted_and_how([15, 7, 3, -8])

