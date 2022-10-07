=begin
Filter the number:
Oh, no! The number has been mixed up with the text.
Your goal is to retrieve the number from the text, can you return the number back to its original state?

Task
Your task is to return a number from a string.

Details
You will be given a string of numbers and letters mixed up, you have to return all the numbers in that string in the order they occur.

=end


  def filter_string(string)
  string.scan(/\d/).join('').to_i
end

# Calling the method for testing (using "p" method to view debug output):
p filter_string("a1b2c3333")