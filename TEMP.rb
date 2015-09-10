#!/usr/bun/ruby

array = [ 2, "PHUOC", 5, "40"]
array_string= [ "DUONG", "HUU", 'Phuoc', '\n']
array_int = [1,1,2,2,3,4,4,4,4,3,5,1,2]

def random_select(array, num)
	arrays = array.sample(num)
	p arrays
end
# ---------------------
def random_select1(array,num)
	arrays = []
	num.times do |item|
		array.include? rand<<Random.new.rand(array.size) ? arrays<<arrays.at(rand) 
		arrays<<array.at(rand)
	end
	p arrays
end
# ----------------------
random_select1 array, 3

def length_finder(array_string)
	arrays = array_string.map { |item| item.size }
	p arrays
end
def non_dupplicate_value(array_int)
	arrays = array_int.uniq
	p arrays
end
def ghost(num)
	pow = num**2
	first_num = pow/(10**(num.to_s.size))
	last_num = pow%(10**(num.to_s.size))
	p 'Ghost' if num == first_num + last_num
end


#SHOW RESULT
# random_select array, 2
# length_finder array_string
# non_dupplicate_value array_int
# ghost 297