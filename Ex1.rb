#!/usr/bun/ruby
module Function
	def check_gender(array,condition)
		if condition.downcase.eql?"m" or condition.downcase.eql?"male"
			result = array.select {|item| item.gender.eql?"Male"}
		elsif condition.downcase.eql?"f" or condition.downcase.eql?"female"
			result = array.select {|item| item.gender.eql?"Female"}
		else
			result = array.select {|item| item.gender.eql?"(Unknown)"}
		end
	end
	def over_age(array,condition)
		result = array.select {|item| item.age>condition and !(item.age.eql?"(Unknown)")}
	end
	def under_age(array,condition)
		result = array.select {|item| item.age<condition and !(item.age.eql?"(Unknown)")}
	end
end
class Human
	attr_accessor :name, :age, :gender
	def initialize(name, age, gender)
		@name	= validate_name(name)
		@age	= validate_age(age)
		@gender = validate_gender(gender)
	end
	def to_s
		"Name:#{@name}\t\t\tAge:#{@age}\t\tGender:#{@gender}"
	end
	#=============================
	private
	def validate_name(name)
		if name.eql?""
			name ="(Unknown)"
		else
			name
		end
			
	end
	def validate_age(age)
		if age.is_a? Integer and age<=150 and age>0
			age
		else
			age = "(Unknown)"
		end
	end
	def validate_gender(gender)
		if gender.downcase.eql?"m" or gender.downcase.eql?"male"
			gender = "Male"
		elsif gender.downcase.eql?"f" or gender.downcase.eql?"female"
			gender = "Female"
		else
			gender = "(Unknown)"
		end
	end
end

include Function
data = Array.new()
person = Human.new("PHP", 10, "m")
data <<person
person = Human.new("Java", 19, "m")
data <<person
person = Human.new("Ruby", 15, "f")
data <<person
person = Human.new("IOS", 20, "f")
data <<person
person = Human.new("", 0, "ms")
data <<person
puts "======List of user====="
puts data
puts "======List of male====="
puts check_gender(data,"m")
puts "======List of male and over 18====="
puts over_age(check_gender(data,"m"),18)