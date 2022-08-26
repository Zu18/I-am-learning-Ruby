=begin
Grasshopper - Personalized Message

Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
Use conditionals to return the proper message:
case 	return
name equals owner 	'Hello boss'
otherwise 	        'Hello guest'

=end


#Creating a personalized greeting method for an owner and a guest.

def greet(name,owner) 

  if name == owner
   return "Hello boss"
  else
    return "Hello guest"
  end
    
end

# Calling the method for testing (using "p" method to view debug output):

p greet("Zukhra","Zukhra")
p greet("Mark","Zukhra")
