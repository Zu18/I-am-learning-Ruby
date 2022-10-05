=begin
Task:

Given an array/list [] of n integers , Arrange them in a way similar to the to-and-fro movement of a Pendulum
The Smallest element of the list of integers , must come in center position of array/list.
The Higher than smallest , goes to the right.
The Next higher number goes to the left of minimum number and So on , in a to-and-fro manner similar to that of a Pendulum.

Input >> Output Examples:
pendulum ([6, 6, 8 ,5 ,10]) ==> [10, 6, 5, 6, 8]
pendulum ([-9, -2, -10, -6]) ==> [-6, -10, -9, -2]

=end


# a middle of an array has index 0,
# a left part - even indexes(from higher to lower index(including the middle index- 0));
# a right part - odds(from lower to higher).
def pendulum(array)
  array.sort!
  evens = []
  odds = []
  array.each_with_index do |item, index|
    if index.even?
      evens << item
    else
      odds << item
    end
  end
  evens.reverse + odds
end

# Calling the method for testing( using "p" method to view debug output):
p pendulum ([6, 6, 8 ,5 ,10])

