class Gum
	getter brand
	def initialize(@brand : String)
	end
end

gum = Gum.new("rigleys")
puts gum.brand
