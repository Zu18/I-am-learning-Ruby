=begin
Rock Paper Scissors

Let's play! You have to return which player won! In case of a draw return Draw!.
Examples(Input1, Input2 --> Output):
"scissors", "paper" --> "Player 1 won!"
"scissors", "rock" --> "Player 2 won!"
"paper", "paper" --> "Draw!"
=end


# Creating Rock Paper Scissors method.

def rock_paper_scissors(p1, p2)      # p1 - first player choice, p2 - second player choice
  if p1 == p2                        # if inputs are the same
    return "Draw!"
  elsif p1 =="rock" && p2 =="scissors" || p1 =="scissors" && p2 =="paper" || p1 =="paper" && p2=="rock"  # conditions for the victory of the first player   
    return "Player 1 won!"
  else
    return "Player 2 won!"           # conditions for the victory of the second player
  end
end


# Calling the method for testing (using "p" method to view debug output):

p rock_paper_scissors("scissors", "rock")
