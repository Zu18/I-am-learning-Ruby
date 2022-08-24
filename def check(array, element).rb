=begin
Instruction:
You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
Array can contain numbers or strings. X can be either.
Return true if the array contains the value, false if not.
=end



# Creating the method that will check if an element exists in an array and return true or false.

def check(array, element)
  array.include? element     #check an element. Return true if the element in the array and false otherwise
end


#The method call to test
p check(array =[ "a", "b", "c", "d", 2 ], "5")
