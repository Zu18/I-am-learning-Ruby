=begin
254 shades of grey
Write a function that takes a number n as a parameter and return an array containing n shades of grey in hexadecimal code (#aaaaaa for example). The array should be sorted in ascending order starting with '#010101', '#020202', etc. (using lower case letters).

Examples:

n =  1:    ["#010101"]
n = 10:    ["#010101", "#020202", "#030303", "#040404", "#050505", "#060606", "#070707", "#080808", "#090909", "#0a0a0a"]

As a reminder, the grey color is composed by the same number of red, green and blue: #010101, #aeaeae, or #555555.

Black: #000000 and white: #ffffff are not accepted values.

When n is negative, just return an empty array. If n is higher than 254, just return an array of 254 elements.

=end

def shades_of_grey(n)
  return [] if n < 0
  arr = []
  for i in (1..n)
    hex = i.to_s(16)
    if hex.size == 1
      hex = '0' + hex
    end
    arr << '#' + hex*3
    break if i >= 254
  end
  arr
end

# Calling the method for testing (using "p" method to view debug output):
p shades_of_grey(255)


