#!/usr/bun/ruby


#A method call a Check(var1) method to redo or not
def InputData()
	temp = false
	error = false
	begin
		puts "Gia tri chua ki tu khac ngoai chu so. Khong hop le!" if error ==true
		print "Nhap gia tri bien:"
		string = gets.to_s
		temp = Check string
		if temp ==true
			value = string.to_i
		else
			error = true
		end
	end while temp == false
	return value
end

#A method check a string
def Check(var1)
	array= var1.to_s.split(//).to_a
	length = array.length
	#Split string to check character
	for i in 0..length
		char=array.at(i)
		#if character is not number ("0".."9"), return false (not a number)
		if (" ".."/") === char || (":".."~") === char
			return false
		end
	end
	#if string just contain number, retuen true (var1 is a number)
	return true
end

puts ""
puts "GIAI PHUONG TRINH BAC 2: Ax^2+By+C=0"
print "Nhap vao gia tri cua A. "
a = InputData()
print "Nhap vao gia tri cua B. "
b = InputData()
print "Nhap vao gia tri cua C. "
c = InputData()

$delta = (b*b) - (4*a*c)
if $delta < 0
	puts "Phuong trinh vo nghiem!"
	puts ""
elsif $delta == 0
	nghiem = ((-b) / (2*a))
	puts "Phuong trinh co mot nghiem duy nhat la x= #{nghiem}"
	puts ""
else
	x1 = ( ((-b) - Math.sqrt($delta)) / (2*a) )
    x2 = ( ((-b) + Math.sqrt($delta)) / (2*a) )
    puts "Phuong trinh co hai nghiem phan biet:"
    puts "x1= #{x1}"
    puts "x2= #{x2}"
    puts ""
end
