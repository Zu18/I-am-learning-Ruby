=begin
Count the divisors of a number!

Count the number of divisors of a positive integer n.
Random tests go up to n = 500000.

Examples (input --> output)
4 --> 3 (1, 2, 4)
5 --> 2 (1, 5)
12 --> 6 (1, 2, 3, 4, 6, 12)
30 --> 8 (1, 2, 3, 5, 6, 10, 15, 30)

Note you should only return a number, the count of divisors.
The numbers between parentheses are shown only for you to see which numbers are counted in each case.

=end

def divisors(n)
  count = 0
  for i in (1..n)
    if n%i == 0
      count += 1
    end
  end
  count
end

# Calling the method for testing (using "p" method to view debug output):
p divisors(54)