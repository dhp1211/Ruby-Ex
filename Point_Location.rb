#!/usr/bun/ruby

def check_point_location(file_link)
	last_tring = file_link.read.length
	file_link.rewind
	point_location = file_link.read.length - last_tring
	file_link.seek(-last_tring, IO::SEEK_END)
	return point_location
 end

file = File.open("text.txt","r")
puts "First line:" + file.gets + file.gets
puts "Current p: #{check_point_location(file)}"
puts "Noi dung con lai:\n" + file.read