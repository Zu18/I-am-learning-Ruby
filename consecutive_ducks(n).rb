=begin

Positive integers have so many gorgeous features.
Some of them could be expressed as a sum of two or more consecutive positive numbers.

Given Positive integer, N , Return true if it could be expressed as a sum of two or more consecutive positive numbers ,
OtherWise return false .
Notes
    Guaranteed constraint : 2 ≤ N ≤ (2^32) -1 .

Input >> Output Examples:
* consecutiveDucks(9)  ==>  return (true)  //  9 , could be expressed as a sum of ( 2 + 3 + 4 ) or ( 4 + 5 ) .

* consecutiveDucks(64)  ==>  return (false)

* consecutiveDucks(42)  ==>  return (true) //  42 , could be expressed as a sum of ( 9 + 10 + 11 + 12 )  .

=end

def consecutive_ducks(n)
  for element in (n/2 + 1).downto(1)
    sum = 0
    for i in element.downto(1)
      sum += i
      if sum == n
        return true
      end
      if sum > n
        break
      end
    end
  end
  false
end

# Calling the method for testing (using "p" method to view debug output):
p consecutive_ducks(7)