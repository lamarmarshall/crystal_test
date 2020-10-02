str = "canyousaveyoursoul"
pat = /(.*?)save(.*)/
if str =~ pat
	puts "#{$1}  -  #{$2}"
end

if str.includes?("sav")
	puts "includes sav"
end
tup = { name: "lamar", age: 37}
p tup[:name]
