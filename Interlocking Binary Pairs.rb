=begin
Task
Write a function that checks if two non-negative integers make an "interlocking binary pair".
Interlock ?
    -numbers can be interlocked if their binary representations have no 1's in the same place
    -comparisons are made by bit position, starting from right to left (see the examples below)
   - when representations are of different lengths, the unmatched left-most bits are ignored

Examples
    a = 9, b = 4
Stacking representations shows how they can interlock. Here, no 1's share any position, so the function returns true.
 9    1001
 4     100


Input
Two non-negative integers in the range 0 <= n <= 2 ** 64 - 1 (Languages with unsigned Long) or 0 <= n <= 2 ** 63 - 1
(Languages without unsigned Long).

Output
Boolean true or false whether or not these integers are interlockable.

=end



def interlockable(a, b)
  a = a.to_s(2).reverse               # a[last] is a[0]
  b = b.to_s(2).reverse               # b[last] is b[0]
  length = [a.size, b.size].min       # to equalize the number of elements in the arrays
  for i in (0...length)
    if a[i] == '1' and b[i] == '1'
      return false
    end
  end
  true
end

# Calling the method for testing (using "p" method to view debug output):
p interlockable(9, 4)
p interlockable(3, 6)