require "uri"
require "net/http"

# Make sure you have a valid Hertek Connect account with Connect API access enabled.
# This script uses the environment variables CONNECT_API_USERNAME and CONNECT_API_PASSWORD
# to authenticate.

def fetchConnectApiToken(username, password)
  url = URI("https://api.acceptance.hertekconnect.nl/api/v1/auth/request_token")

  http = Net::HTTP.new(url.host, url.port);
  http.use_ssl = true
  request = Net::HTTP::Post.new(url)
  request["Content-Type"] = "application/json"
  request.body = <<EOB
  {
    "username": "#{username}",
    "password": "#{password}"
  }
EOB

  response = http.request(request)
  puts response.read_body
end

username = ENV["CONNECT_API_USERNAME"]
password = ENV["CONNECT_API_PASSWORD"]

if username.nil? || password.nil?
  puts "Make sure to set CONNECT_API_USERNAME and CONNECT_API_PASSWORD env variables."
end

fetchConnectApiToken(username, password)

