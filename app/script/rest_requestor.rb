require 'rest-client'
url = "http://localhost:3000"
loop do
  puts "Type relative path.  '#quit' to exit"
  rel_path = gets.chomp
  break if rel_path =~ /#quit/i
  full_url = url + rel_path
  puts full_url
  puts RestClient.get(url)
end
