write_f = File.new("test.txt", "w")
write_f.puts("whats my name")
write_f.close

rfile = File.read("test.txt")
puts rfile
