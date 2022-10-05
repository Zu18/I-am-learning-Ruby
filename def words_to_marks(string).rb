=begin

If　a = 1, b = 2, c = 3 ... z = 26
Then l + o + v + e = 54
and f + r + i + e + n + d + s + h + i + p = 108
So friendship is twice as strong as love :-)

Your task is to write a function which calculates the value of a word based off the sum of the alphabet positions of its characters.
The input will always be made of only lowercase letters and will never be empty.

=end


# creating a hash from a-z with values 1-26
def array_letters
 letters = {}
 value = 1
 for letter in ("a".."z")
  letters[letter] = value
  value += 1
 end
   letters
end

# creating the method which returns a sum of letters' values
def words_to_marks(string)
  count = 0
  for letter in string.chars
    count += array_letters[letter]
  end
  return count
end

p words_to_marks("love")




