arr = [ 25, 35, 67, 44, 21, 10]

p arr.map{|x| x * 17}

p arr.any?{|x| x < 25} # should be true
p arr.any?{ |x| x > 100 } # should be false

arr.each_with_index do | x, i|
	p "#{x} for #{i}"
end

p arr.includes?(5)

p arr.find{ |i| i > 60}

names = [ "arizona", "new mexico", "maine", "new york", "new hampshire"]
p names.grep(/new/)
