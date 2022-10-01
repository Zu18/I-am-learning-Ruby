=begin
Odd March Bits 8 bits.

Odd bits are getting ready for Bits Battles.
Therefore the n bits march from right to left along an 8 bits path.
Once the most-significant bit reaches the left their march is done.
Each step will be saved as an array of 8 integers.

Return an array of all the steps.

1 <= n <= 8

NOTE: n != 0, because n represents the number of 1s.
Examples

This resembles a simple 8 LED chaser:

n = 3

00000111
00001110
00011100
00111000
01110000
11100000
=end

#Creating the method
def bit_march(n)
  array = Array.new(8, default_element=0)
  n.times{array.push(1)}
  array.shift(n)
  array[8-1] = 0 if array.size < 8
  new_array = [array.dup]
    while array[0] == 0
     array.shift
     array[8-1] = 0 if array.size < 8
     new_array << array.dup
    end
  return new_array
end

# Calling the method for testing(using "p" method to view debug output):
p bit_march(3)


