=begin

Shortest Word:
Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.

=end


# Creating the method
def find_short(string)
 min_length = string.split.sort_by(&:length)[0]
 min_length.length
end


# Calling the method for testing( using "p" method to view debug output):

p find_short("bitcoin take over the world maybe who knows perhaps")
