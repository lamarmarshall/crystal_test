output="["

content = File.read("test.json")
output += content

output += "]"

puts output
