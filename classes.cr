abstract class Person
	
	property name
	property age
	getter age
	getter name
	def initialize(@name : String , @age : Int32 )
	end
end

class Employee < Person

end

emp = Employee.new("bob", 38)

p "#{emp.name}  #{emp.age}"
