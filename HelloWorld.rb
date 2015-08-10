#!/usr/bin/ruby

print "Nhap:"
a = gets.to_s

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

WriteFile a
ReadFile()