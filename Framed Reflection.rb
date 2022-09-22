=begin

You are given a message (text) that you choose to read in a mirror (weirdo). Return what you would see, complete with the mirror frame.
Example:
'Hello World' would give:

"*********\n* olleH *\n* dlroW *\n*********"

Words in your solution should be left-aligned.

=end


# Creating the method

def mirror(text)
  words = text.reverse.split.reverse
  max = words.max_by(&:length).size
  border = '*' * (max + 4)

  words.map{ |w| "* #{w.ljust(max)} *" }.unshift(border).push(border).join("\n")
end

# Calling the method for testing (using "p" method to view debug output):

p mirror("Hello word")
