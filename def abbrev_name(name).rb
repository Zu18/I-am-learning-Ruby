=begin 

Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

The output should be two capital letters with a dot separating them.

It should look like this:

Sam Harris => S.H

patrick feeney => P.F

=end

# Creating the method

def abbrev_name(name)
  name.split.map { |s| s[0]}.join('.').upcase
end

# Calling the method for testing( using "p" method to view debug output):

p def abbrev_name("Sam harris")
