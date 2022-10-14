=begin 

Complete the function that accepts a valid string and returns an integer.

Wait, that would be too easy! Every character of the string should be converted to the hex value of its ascii code, then the result should be the sum of the numbers in the hex strings (ignore letters).
Examples

"Yo" ==> "59 6f" ==> 5 + 9 + 6 = 20
"Hello, World!"  ==> 91
"Forty4Three"    ==> 113

=end




def hex_hash_sum(characters)
  sum = 0
  characters.chars.each do |character|
  sum += character.unpack('H*').join.chars.map(&:to_i).inject(:+)
  end
  sum
end
