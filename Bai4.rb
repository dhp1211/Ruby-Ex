#!/usr/bun/ruby


puts "Nhap text. Nhap \"exit\" de ket thuc!" 
def Input
	check= ""
	var = ""
	begin
		var +=check
		print "Nhap:"
		check = gets.to_s
	end while not(check.include?"exit")
	return var
end
def WriteFile(var)
	wFile = File.new("input.txt","w+")
	if wFile
		wFile.syswrite(var)
	else
		puts "Unable to open file!"
	end
end
def ReadFile()
	#rFile = File.open("input.txt","r")
	#if rFile
	#	content = rFile.sysread()
	#	puts content
	#else
	#	puts "Unable to open file"
	#end
	#return content
	content=" "
	puts "Ket qua:"
	rFile = File.open("input.txt","r")
	while (line = rFile.gets)
		content= "#{line}"
		content= content.gsub("On","**")
		content= content.gsub("on","**")
		content= content.gsub("Am","**")
		content= content.gsub("am","**")

		puts content
	end
end
a = Input()
WriteFile a
ReadFile()