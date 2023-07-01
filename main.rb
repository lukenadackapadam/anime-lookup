require "http"

system "clear"

puts "Please type the name of the anime you wish to learn more about."

puts "\n"

user_input = gets.chomp.downcase

response = HTTP.get("https://api.jikan.moe/v4/anime?q=#{user_input}&sfw")

title = response.parse(:json)["data"][0]["title"]

synopsis = response.parse(:json)["data"][0]["synopsis"]
