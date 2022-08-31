=begin
Our football team finished the championship. The result of each match look like "x:y". Results of all matches are recorded in the collection.
For example: ["3:1", "2:2", "0:1", ...]
Write a function that takes such collection and counts the points of our team in the championship. Rules for counting points for each match:
    if x > y: 3 points
    if x < y: 0 point
    if x = y: 1 point
    
Notes:
    there are 10 matches in the championship
    0 <= x <= 4
    0 <= y <= 4

=end

def points(games)
  score = 0
  games.map do |result|
    comparison = result.split(":")
    case comparison[0] <=> comparison[1]
    when 1 then score += 3
    when 0 then score += 1
    when -1 then score += 0
    end
  end
  return score
end

# Calling the method for testing (using "p" method to view debug output):

p points(games =["1:1","2:2","3:3","4:4","2:2","3:3","4:4","3:3","4:4","4:4"])
