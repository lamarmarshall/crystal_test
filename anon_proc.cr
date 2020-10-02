# anon function
fn =  -> ( i : Int32 , p : Int32){
		i + p
}

puts fn.call(8, 8)

# extension runs automatcally
sumUp do |x|
	p "this sums up everthing #{x}"
end

def sumUp()
	n = 5
	n = n * 45
	yield n
end

#mapping strings
people = %w[ lamar tom bob]

p people.map{|x| x.upcase}
p people.map &.titleize

#mapping integers
nums = [32 , 50, 66, 75, 80]
p nums.map &.*(50)

#mapping over hashes
currencies = {
	"BASE" => "USD",
	"USD" => 1,
	"EUR" => 1.5,
	"GBP" => 2,
	"CAD" => 0.75,
}

currencies.keys.map do |cur|
	if cur == "BASE"
		next
	end
	n = 500
	n = currencies[cur].to_f * n
	puts "#{cur} in 500 USD IS #{n}"
end

#closures
n = 45
fc = -> (m: Int32){ m * n}

p fc.call(54)
n = 5
p fc.call(10)

def cap(&block : Int32 -> Int32)
	block
end

n = 6
proc = cap{|m| m * 10 + n}
p proc.call(100)

#make anonymous func with class
func = Proc(Int32, Int32, Int32).new{ |a , b| a * b + 5}
p func.call(30, 20)
