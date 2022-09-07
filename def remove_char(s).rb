=begin

Remove First and Last Character

It's pretty straightforward. Your goal is to create a function that removes the first and last characters of a string. You're given one parameter, the original string. You don't have to worry with strings with less than two characters.

=end



# Creating the method
def remove_char(s)
  s[1...-1]
end


# Calling the method for testing( using "p" method to view debug output):

p remove_char("Street")
