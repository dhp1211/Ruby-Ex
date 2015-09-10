#!/usr/bin/ruby

class Fraction
	def initialize(numerator,denominator)
		@numerator = numerator
		@denominator = denominator
		puts "Phan so: #{@numerator}/#{@denominator}"
	end
	def numerator
		@numerator
	end
	def denominator
		@denominator
	end
	def plus(num)
		@numerator = @numerator*num.denominator+ @denominator*num.numerator
		@denominator = @denominator*num.denominator
		return @numerator, @denominator
	end
	def minus(num)
		@numerator = @numerator*num.denominator - @denominator*num.numerator
		@denominator = @denominator*num.denominator

		return @numerator, @denominator
		
	end
	def mul(num)
		@numerator = @numerator*num.numerator
		@denominator = @denominator*num.denominator
		return @numerator, @denominator
	end
	def div(num)
		@numerator = @numerator/num.numerator
		@denominator = @denominator/num.denominator
		return @numerator, @denominator
	end
	def print()
		puts "#{@numerator}/#{@denominator}"
	end
end

num1 = Fraction.new(1,-2)
num2 = Fraction.new(1,3)
num1.minus(num2)
print "Ket qua tru 2 phan so la:"
num1.print()