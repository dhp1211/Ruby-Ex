#!/usr/bun/ruby


puts "Nhap text. Nhap \"exit\" de ket thuc!" 
def Input
	check= ""
	var = " "
	begin
		var += "\n" + check
		print "Nhap:"
		check = gets.to_s
	end while check == "exit"
	put 
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
	rFile = File.open("input.txt","r")
	if rFile
		content = rFile.sysread()
		puts content
	else
		puts "Unable to open file"
	end
	return content
end
a = Input()
WriteFile a
ReadFile()