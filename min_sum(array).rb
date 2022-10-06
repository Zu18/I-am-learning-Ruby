=begin
Task
Given an array of integers , Find the minimum sum which is obtained from summing each Two integers product .
Notes

    Array/list will contain positives only .
    Array/list will always have even size

Input >> Output Example
minSum({5,4,2,3}) ==> return (22)
Explanation:
The minimum sum obtained from summing each two integers product ,  5*2 + 3*4 = 22

=end



def min_sum(array)
  array.sort!
  new_array =[]
  while array.size !=0
    a = array.shift
    b = array.pop
    new_array << a*b
  end
  return new_array.map(&:to_i).sum
  end



# Calling the method for testing (using "p" method to view debug output):
p min_sum([5,4,2,3])

