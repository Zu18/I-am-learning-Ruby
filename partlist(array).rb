=begin
Parts of a list
Write a function partlist that gives all the ways to divide a list (an array) of at least two elements into two non-empty parts.

    Each two non empty parts will be in a pair (or an array for languages without tuples or a structin C - C: see Examples test Cases - )
    Each part will be in a string
    Elements of a pair must be in the same order as in the original array.

Examples of returns in different languages:

a = ["az", "toto", "picaro", "zone", "kiwi"] -->
[["az", "toto picaro zone kiwi"], ["az toto", "picaro zone kiwi"], ["az toto picaro", "zone kiwi"], ["az toto picaro zone", "kiwi"]]
or
 a = {"az", "toto", "picaro", "zone", "kiwi"} -->
{{"az", "toto picaro zone kiwi"}, {"az toto", "picaro zone kiwi"}, {"az toto picaro", "zone kiwi"}, {"az toto picaro zone", "kiwi"}}
or
a = ["az", "toto", "picaro", "zone", "kiwi"] -->
[("az", "toto picaro zone kiwi"), ("az toto", "picaro zone kiwi"), ("az toto picaro", "zone kiwi"), ("az toto picaro zone", "kiwi")]
or
a = [|"az", "toto", "picaro", "zone", "kiwi"|] -->
[("az", "toto picaro zone kiwi"), ("az toto", "picaro zone kiwi"), ("az toto picaro", "zone kiwi"), ("az toto picaro zone", "kiwi")]
or
a = ["az", "toto", "picaro", "zone", "kiwi"] -->
"(az, toto picaro zone kiwi)(az toto, picaro zone kiwi)(az toto picaro, zone kiwi)(az toto picaro zone, kiwi)"

Note

You can see other examples for each language in "Your test cases"
=end


def partlist(array)
  result = []
  for i in (1...array.size)
    left = array[0...i].join(' ')
    right = array[i..-1].join(' ')
    result << [left, right]
  end
  result
end

# Calling the method for testing (using "p" method to view debug output):
p partlist(["I", "wish", "I", "hadn't", "come"])