#!/usr/bun/ruby

def implicit (a,b,&block)
	block.call(a,b)
end
# add = lambda {|x,y| x+y }
# puts implicit(1,2) {|a,b| a+b}
# puts implicit(1,2,&add)

def explicit (a,b)
	yield(a,b)
end

# add = lambda {|x,y| x+y }
# puts explicit(2,3, &add)
# puts explicit(2,3) {|x,y| x+y }

def filter(array, block)
	
end
array = [1,2,3,4,5,6]
even = lambda {|item| item%2==0 }
p filter(array) 