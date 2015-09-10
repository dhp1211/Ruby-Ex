#!/usr/bun/ruby

class Good
	attr_accessor :product, :number, :price, :tax
	$MEDICINE = ["flu","headache","sick","stomach", "pain","cancer","ill","medicine"]
	$BOOK = ["book","author","poem","story"]
	$FOOD = ["meat","milk","rice","cake","candy","potato","tomato","water","vesgetable","food","cereal"]
	def initialize(product, number, price)
		@product = product
		@number = number
		@price = price
		@tax = ((tax_counter*@price)/100).round(2)
	end
	def tax_counter
		basic_tax + import_tax
	end
	def basic_tax
		tax_fee = 10
		$MEDICINE.each do |item|
			if @product.downcase.include?item
				tax_fee = 0
			end
		end
		$BOOK.each do |item|
			if @product.downcase.include?item
				tax_fee = 0
			end
		end
		$FOOD.each do |item|
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
		puts "\tTax:#{@tax}$"
		puts "\tSum:#{@tax+@price}$"
		""
	end
end
def file_output(data)
	write_file = File.new("Good_Input.txt","w")
	if write_file
		sum = 0
		sum_tax = 0

		data.each do |item|
			write_file.syswrite(item.product.upcase + ", #{item.number}, #{item.price}$+ #{item.tax}$\n")
			sum_tax += item.tax*item.number
			sum += (item.tax+item.price)*item.number
		end
		write_file.syswrite("Sum tax:#{sum_tax}$\n")
		write_file.syswrite("Sum:#{sum}$")
	else
		puts "Unable to open file!"
	end
	
end
data = Array.new
good = Good.new("Book of life",10,10)
data <<good
good = Good.new("Imported Water",20,100)
data <<good
good = Good.new("Oppo Neo 5",5,200)
data <<good
good = Good.new("Imported Lumia 520",5,300.50)
data <<good

puts data
file_output(data)