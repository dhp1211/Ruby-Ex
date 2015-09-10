#!/usr/bun/ruby


class Motion 
	def love
		'From A: I love'
	end
	def like
		'From A: I like'
	end
end
class Action < Motion
	def hug
		'From B: I hug'
	end
	def like
		'From B: I like to'
	end
end
class Human < Action
	def love
		super + " you"
	end
	def like
		super + " hug you"
	end
end

person = Human.new
p person.love
p person.like