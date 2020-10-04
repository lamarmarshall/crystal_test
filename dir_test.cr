
Dir.cd("../")
puts Dir.current
Dir.each(".") do | dir |

	 next if dir.includes? "."
	
	if Dir.exists? "#{Dir.current}/#{dir}"
		puts dir
	end
end
