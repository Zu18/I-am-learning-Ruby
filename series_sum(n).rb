=begin
Rules:
    You need to round the answer to 2 decimal places and return it as String.
    If the given value is 0 then it should return 0.00
    You will only be given Natural Numbers as arguments.

Examples:(Input --> Output)
1 --> 1 --> "1.00"
2 --> 1 + 1/4 --> "1.25"
5 --> 1 + 1/4 + 1/7 + 1/10 + 1/13 --> "1.57"

=end

# formula: 1/denominator + 1/(denominator +3) + 1/(denominator +6)...
# with each step the denominator increases by 3, the initial denominator = 1
def series_sum(n)
  denominator = 1.00
  sum = 0
  for num in (1..n)
    sum += 1/denominator
    denominator +=3
  end
  format("%0.2f", sum)
end


p series_sum(5)