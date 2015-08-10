#!/usr/bun/ruby

myarray = Array.new
for i in 0..10
	myarray+= [rand(99)]
end
puts "Array:"
puts "#{myarray}"
puts "Sort: #{myarray.sort}"
puts "Sort: #{myarray.sort.reverse}"
print "Nhap so:"
so=gets.to_i

if myarray.include? so
	puts "So nay thuoc mang da cho."
else
    puts "So nay KHONG thuoc mang da cho."
end