require "json"

record = Hash(String, String).new
puts "what is your name"
name=gets.not_nil!
puts "what is you age"
age=gets.not_nil!

record["name"] = name
record["age"] = age

puts record.to_json

File.open("test.json", "a") do |f|
	f.puts record.to_json + ","
end


