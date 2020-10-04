require "http/client"
require "json"
hdr = HTTP::Headers{"Accept" =>	"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
response = HTTP::Client.get("https://www.tronalddump.io/random/quote", headers: hdr)
p response.status

js = JSON::Parser.new response.body
p js.parse["value"]
 
