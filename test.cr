myvar="kiss my ass"
puts "hello world"

puts myvar

num=30
num1=45

puts "1: #{num} 2: #{num1} = #{num + num1}"

#puts "lamar".size . " " . "bob " * 3; 

puts "monkey".index("key")
puts "monkey" == "monkey"
puts "monkey" == "dog"

puts "jonny loves gold".includes?("gold")
puts "lamar".count("a")
puts "".empty?
puts "what is your favorite color".gsub("color"){"food"}

a=[1,2,367,67,88,9,99, 2,44]

a.map!{|x| x * 8}
puts a
puts a.uniq
a1 = [1,2,3]
puts a1.permutations
puts a1.permutations.size

a1.each do |val|
	puts val
end
puts ":: first loop ::"
x =1

loop do 
	x += 1
	next unless (x%2)==0
	puts x
	break if x >= 10
end

puts ":: second loop ::"

x=1
while x <= 20
	x += 1
	next unless (x%2)==0
	puts x

end

puts ":: third loop ::"
x=1
until x >= 20 
	x += 1
	next unless (x%2)==0
	puts x
end 
age=15
puts "age is #{age}"

if age >= 18 
	puts "you can vote"
else 
	puts "you can NOT vote"
end

print "what is your language?:\n"
lang = gets

case lang 
	when "fr"
		puts "vous parlez francais"
		
	when "es"
		puts "tu hablas espanol"
		
	when "en"
		puts "you speak english"
		
	else
		puts "we dont understand you"
end

puts "give me the first number:"
n1=gets.not_nil!
puts "give me the second number"
n2=gets.not_nil!
# to_i to_s to_f to_i32
puts "#{n1} * #{n2} = #{ n1.to_i * n2.to_i}"


puts " :: hashes ::"

h = {
	"lamar" => 37,
	"roxy" => 32,
	"ken" => 50
}

puts h
h = h.merge({"jake" => 35})
puts h

puts h.select{|k, v| v > 33}
puts h.has_key?("lamar")

puts ":: procs ::"

p = -> (x: Int32){ x * x}

puts p.call 9

puts ":: functions ::"


def times2(n1, n2)
	n1 * n2 * 2
end

puts times2(3,4)

def addAll(*values)
	sum = 0
	values.each do |v|
		sum += v
	end
	sum
end

puts addAll 12,34,56,77,88,66
puts ":: Enums ::"
enum Level
	Novice = 0
	Intemediate = 1
	Master = 2

	def master?
		self == Level::Master
	end

end

puts Level::Novice
puts Level::Master.master?

puts ":: Class ::"

class Person 
	def initialize(name : String, @age = 0)
		@name = name
	end

	def getName
		@name
	end

	def age=(age : Int16)
		@age = age
	end

	def getAge
		if @age 
			@age
		else 
			35
		end
	end

	def minor?
		begin
			if( @age <= 18) 
				return true
			else
				return false
			end
		rescue 
			false
		end
	end
		

	
end

carl = Person.new("Carl")
#carl.age = 38
puts " #{carl.getName()} #{carl.getAge} #{carl.minor? ? "carl is a minor" : "carl is not a minor"}"

class Car

property make
property model
property year
	def initialize
		@make = "None"
		@model = "None"
		@year = 2000
	end

	def isPOS?
		if @year < 2015
			true
		else
			false
		end
		
	end
end


honda = Car.new
honda.make = "Honda"
honda.model = "Accord"
honda.year = 2005

puts "#{honda.make} #{honda.model} is a piece of shit? #{ honda.isPOS? }"
