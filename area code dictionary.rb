#Create a dictionary (hash) with 10 city names and their area codes.
dial_book = {
  "new york" => "212",
  "new brunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def display_city_names(hash) #to display alphabetically ordered list of cities
  list_cities = hash.keys.sort
  puts list_cities
end


def get_area_code(hash) #to display an area code by entering the city name from a specific list
  puts "Enter your selection:"
  input = gets.chomp #to prompt the input from the list of cities
  if hash.include?(input) #to display an area code
    puts hash[input]
  else
    puts "You entered an invalid city name." #to show the error message
  end
end

loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break  if answer != "y"
  puts "Which city do you want to lookup the area code for?"
  display_city_names(dial_book)
  get_area_code(dial_book)
end
