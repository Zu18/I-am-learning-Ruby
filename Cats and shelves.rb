=begin

Cats and shelves
Description:
An infinite number of shelves are arranged one above the other in a staggered fashion.
The cat can jump up to 3 shelves at the same time: 
from shelf 1 to shelf 2 or 4 (the cat cannot climb on the shelf directly above its head), 
according to the illustration:

                 ┌────────┐
                 │-6------│
                 └────────┘
┌────────┐       
│------5-│        
└────────┘  ┌─────► OK!
            │    ┌────────┐
            │    │-4------│
            │    └────────┘
┌────────┐  │
│------3-│  │     
BANG!────┘  ├─────► OK! 
  ▲  |\_/|  │    ┌────────┐
  │ ("^-^)  │    │-2------│
  │ )   (   │    └────────┘
┌─┴─┴───┴┬──┘
│------1-│
└────────┘

Input

Start and finish shelf numbers (always positive integers, finish no smaller than start)
Task

Find the minimum number of jumps to go from start to finish
Example

Start 1, finish 5, then answer is 2 (1 => 4 => 5 or 1 => 2 => 5)

=end


#formula n/3 +(n%3).
# The remainder after division is 1 or 2, there are 1 or 2 extra steps, respectively
def jumps(start, finish)
  max_steps = 3
  difference = finish - start
  count_steps = difference/max_steps + (difference%3)
end


# Calling the method for testing (using "p" method to view debug output):
p jumps(1, 1)
