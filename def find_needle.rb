#Can you find the needle in the haystack?
#Write a function find_needle() that takes an array full of junk but containing one #"needle"
#After your function finds the needle it should return a message (as a string) that says:
#"found the needle at position " plus the index it found the needle, so: 


#1. Create the method find_needle 

def find_needle(array = [])
  array.each  do |value|
    if value == "needle"
      index = array.find_index("needle")
      return "found the needle at position #{index}"
    end
  end
end

#2. Call the method find_needle

find_needle(array = ["hay", "junk", "hay", "hay", "moreJunk", "needle", "randomJunk"])
