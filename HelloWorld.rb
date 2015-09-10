#!/usr/bin/ruby

def random_select(array, num)
	arrays = array.sample(num)
	p arrays
end

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

array = [ 2, "PHUOC", 5, "40"]
array_string= [ "DUONG", "HUU", 'Phuoc', '\n']
array_int = [1,1,2,2,3,4,4,4,4,3,5,1,2]
#SHOW RESULT
# random_select array, 2
# length_finder array_string
# non_dupplicate_value array_int
# ghost 297

def temp(array)
	p array
	arrays = array.delete_if { |item| array.count(item)>=2 }
	p array
	p arrays
end
temp array_int