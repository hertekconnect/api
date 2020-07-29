require "uri"
require "net/http"

# Use authentication.rb to fetch a valid Connect API Token for this session.

def fetchZones(installation_id, token)
    url = URI("https://api.acceptance.hertekconnect.nl//api/v1/installations/#{installation_id}/zones")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    request["Content-Type"] = "application/json"
    request["Authorization"] = "Bearer #{token}"

    response = https.request(request)
    puts response.read_body
end

token = ENV["CONNECT_API_TOKEN"]
installation_id = ENV["INSTALLATION_ID"]

puts installation_id

if token.nil? || installation_id.nil?
  puts "Make sure to set CONNECT_API_TOKEN and INSTALLION_ID env variable."
else
  fetchZones(installation_id, token)
end