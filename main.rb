def multiple_words(string)
  array = string.split()
  string_joined = array.join("+")
  return string_joined
end

require "http"

system "clear"

puts "Please type the name of the anime you wish to learn more about."

puts "\n"

user_input = gets.chomp.downcase

user_input = multiple_words(user_input)

response = HTTP.get("https://api.jikan.moe/v4/anime?q=#{user_input}&sfw")

title = response.parse(:json)["data"][0]["title"]

synopsis = response.parse(:json)["data"][0]["synopsis"]

puts "\n"
puts "Title: #{title}"
puts "\n"
puts "Synopsis: \n#{synopsis}"
