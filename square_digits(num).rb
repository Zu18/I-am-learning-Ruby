=begin
Welcome. In this kata, you are asked to square every digit of a number and concatenate them.

For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer
=end


#Creating the method
def square_digits(num)
  num.digits.reverse.map {|x| x*x }.join.to_i
end


# Calling the method for testing(using "p" method to view debug output):
p square_digits(9119)