require 'rest-client'
url = "http://localhost:3000"
loop do
  puts "Type relative path.  '#quit' to exit.  Type POST: for POST action."
  rel_path = gets.chomp
  break if rel_path =~ /#quit/i
  if rel_path =~ /\APOST:/
    post = true
    puts "Type relative path:"
    rel_path = gets.chomp
    puts "Type payload for POST:"
    payload = gets.chomp
  else
    post = false
  end
  full_url = url + rel_path
  puts full_url
  begin
    r = post ? RestClient.post(full_url,payload): RestClient.get(full_url)
    if r.body.size > 0
      puts r.body.gsub(/base64.*?\/>/,'"/>')
    else
      puts "No Body Returned!"
      puts r.inspect
      puts r.headers
    end

  rescue Exception => e
    puts "Error!"
    puts e.message
  end
end
