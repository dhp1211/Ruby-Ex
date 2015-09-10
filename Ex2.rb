#!/usr/bun/ruby

class Good
	attr_accessor :product, :number, :price, :tax
	$MEDICINE = ["flu","headache","sick","stomach", "pain","cancer","ill","medicine","broken"]
	$BOOK = ["book","author","poem","story"]
	$FOOD = ["meat","milk","rice","cake","candy","potato","tomato","water","vesgetable","food","cereal"]
	$FREE_TAX = [$MEDICINE,$BOOK,$FOOD]
	def initialize(product, number, price)
		@product = product
		@number = number
		@price = price
		@tax = tax_counter
	end
	def tax_counter
		basic_tax + import_tax
	end
	def basic_tax
		tax_fee = 10
		index = 0
		while (tax_fee == 10) and ($FREE_TAX.size-1 >= index)
			tax_fee = check($FREE_TAX[index],tax_fee)
			index +=1
		end
		tax_fee
	end
	def check(array, tax_fee)
		array.each do |item|
			if @product.downcase.include?item
				tax_fee = 0
			end
		end
		tax_fee
	end
	def import_tax
		tax_fee = 0
		if @product.downcase.include?"imported"
			tax_fee = 5
		end
		tax_fee
	end
	def to_s
		puts %"Product:"
		puts "\tName:#{@product}"
		puts "\tQuanlity:#{@number}\t\tPrice:#{@price}$"
		puts "\tTax:#{@tax}% (#{fee=((@tax*@price/100.00).round(2))}$)"
		puts "\tSum:#{fee+@price}$"
		""
	end
end
def file_output(data)
	write_file = File.new("Good_Input.txt","w")
	if write_file
		sum = 0
		sum_tax = 0
		data.each do |item|
			write_file.syswrite(item.product.upcase + "--- #{item.number}--- #{item.price}$ + #{item.tax}% (#{(item.tax*item.price/100.00).round(2)}$)\n")
			sum_tax += (item.tax*item.price/100.00).round(2)*item.number
			sum += item.number*item.price
		end
		write_file.syswrite("Sum tax:#{sum_tax}$\n")
		write_file.syswrite("Sum:#{sum+sum_tax}$")
	else
		puts "Unable to open file!"
	end
end
data = Array.new
good = Good.new("Book of life",10,14)
data <<good
good = Good.new("Imported Water",20,100)
data <<good
good = Good.new("Oppo Neo 5",5,14)
data <<good
good = Good.new("Imported Lumia 520",5,300.50)
data <<good

puts data
file_output(data)