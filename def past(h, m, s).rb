=begin

Clock shows h hours, m minutes and s seconds after midnight.

Your task is to write a function which returns the time since midnight in milliseconds.
Example:

h = 0
m = 1
s = 1

result = 61000

Input constraints:

    0 <= h <= 23
    0 <= m <= 59
    0 <= s <= 59

=end


# Creating the method

def past(h, m, s)
  # 1s = 1000 ms
  # 1 m = 60000 ms
  # 1 h = 3,600,000 ms

  if h >= 0 && h <= 23 && m >= 0 && m <= 59 && s >= 0 && s <= 59
  result = h * 3600000 + m*60000 + s*1000
  else
    puts "Invalid input. Input constrains: 0 <= h <= 23; 0 <= m <= 59; 0 <= s <= 59."
  end
end


# Calling the method for testing (using "p" method to view debug output):

p past(1, 1, 651)
