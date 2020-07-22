require "uri"
require "net/http"

# Use authenticaiton.rb to fetch a valid Connect API Token for this session.

def fetchInstallations(token)
  url = URI("https://api.acceptance.hertekconnect.nl/api/v1/installations")

  http = Net::HTTP.new(url.host, url.port);
  http.use_ssl = true
  request = Net::HTTP::Get.new(url)
  request["Content-Type"] = "application/json"
  request["Authorization"] = "Bearer #{token}"

  response = http.request(request)
  puts response.read_body
end

token = ENV["CONNECT_API_TOKEN"]

if token.nil?
  puts "Make sure to set CONNECT_API_TOKEN env variable."
end

fetchInstallations(token)


