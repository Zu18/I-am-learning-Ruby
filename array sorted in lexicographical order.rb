=begin

Instructions:

Just a simple sorting usage.
Create a function that returns the elements of the input-array / list sorted in lexicographical order.

=end




# input: names - unsorted array
# output: sorted array
def sortme(unsorted_array)
  unsorted_array.sort_by(&:itself)
end

#Calling the method for testing (using "p" method to view debug output):
p sortme(['one', 'two', 'three' ])
