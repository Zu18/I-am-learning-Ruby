=begin
Highest and Lowest:
In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

Examples
high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"

Notes
    All numbers are valid Int32, no need to validate them.
    There will always be at least one number in the input string.
    Output string must be two numbers separated by a single space, and highest number is first.

=end


def high_and_low(numbers)
  array =numbers.split(" ").map(&:to_i).sort!
  [array[-1], array[0]].join(" ")
end


# Calling the method for testing (using "p" method to view debug output):
p high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")