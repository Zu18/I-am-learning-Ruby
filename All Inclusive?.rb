=begin
Input:

    a string strng
    an array of strings arr

Output of function contain_all_rots(strng, arr) (or containAllRots or contain-all-rots):

    a boolean true if all rotations of strng are included in arr
    false otherwise

Examples:

contain_all_rots(
  "bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) -> true

contain_all_rots(
  "Ajylvpy", ["Ajylvpy", "ylvpyAj", "jylvpyA", "lvpyAjy", "pyAjylv", "vpyAjyl", "ipywee"]) -> false)

Note:

Though not correct in a mathematical sense

    we will consider that there are no rotations of strng == ""
    and for any array arr: contain_all_rots("", arr) --> true
=end


def contain_all_rots(string, arr)
  count = 0
  variations = []
  for count in 0...string.size
    variations <<  string.split("").rotate(count).join
  end
  p variations
  for variant in variations
    unless arr.include?(variant)        # if array does not include variant - return false
      return false
    end
  end
  true
end

# Calling the method for testing (using "p" method to view debug output):
p contain_all_rots("bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"])