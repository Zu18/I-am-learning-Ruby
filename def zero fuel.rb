=begin

Instructions:

You were camping with your friends far away from home, but when it's time to go back, you realize that your fuel is running out and the nearest pump is 50 miles away! You know that on average, your car runs on about 25 miles per gallon. There are 2 gallons left.
Considering these factors, write a function that tells you if it is possible to get to the pump or not.
Function should return true if it is possible and false if not.

=end



# Creating the method

def zero_fuel(distance, mpg, fuel_left)
  fuel_required = distance.to_f / mpg               
  fuel_left >= fuel_required ? true : false
end


#Creating a personalized greeting method for an owner and a guest.

p zero_fuel(50, 25, 2)
