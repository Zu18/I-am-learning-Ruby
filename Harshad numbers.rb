=begin
Positive integers that are divisible exactly by the sum of their digits are called Harshad numbers.
The first few  are: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 18, ...

We are interested in Harshad numbers where the product of its digit sum s and s with the digits reversed,
gives the original number n.
For example consider number 1729:

    its digit sum, s = 1 + 7 + 2 + 9 = 19
    reversing s = 91
    and 19 * 91 = 1729 --> the number that we started with.

Complete the function which tests if a positive integer n is Harshad number,
and returns True if the product of its digit sum and its digit sum reversed equals n; otherwise return False.

=end


def number_joy(n)
  digit_sum = n.digits.sum
  reversing_sum = digit_sum.to_s.reverse.to_i
  n%digit_sum== 0 && digit_sum*reversing_sum ==n ? true : false
end


# Calling the method for testing (using "p" method to view debug output):
p number_joy(1729)
