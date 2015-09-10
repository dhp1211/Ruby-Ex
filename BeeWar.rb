#!/usr/bun/ruby

class Bee
	def initialize(number)
		@health = 100
		@death = true
		@number = number
	end
	def death
		@death
	end
	def death=(value)
		@death = value
	end
	def health
		@health
	end
	def health=(value)
		@health = value
	end
	def info
		print "\n   #@number"
		print "\t\t #@health"
		print "\t\t #@death"
	end
end
class QueenBee < Bee
	def attack
		attack = Random.new
		if @health >=10
			@health = @health - attack.rand(50)
		end
		check_death
	end
	def check_death
		if @health < 10
			@health = 10
			@death = false
		end
	end
end
class Hunter < Bee
	def attack
		attack = Random.new
		if @health >=30
			@health = @health - attack.rand(30)
		end
		check_death
	end
	def check_death
		if @health < 30
			@health = 30
			@death = false
		end
	end
end
def my_table(name)
	print "\n#{name}\tHealth \t\tDeath"
end
def check_win
	5.times do |index|
		queen_count_death += 1 if queenbee[index].death == true
		hunter_count_death += 1 if hunterbee[index].death =true
	end
	if queen_count_death == 5 || hunter_count_death = 5
		        
	end
end

queenbee = Array.new()
hunterbee = Array.new()
my_table("QueenBee")
5.times do | index |
	queenbee[index] = QueenBee.new(index)
	queenbee[index].info
end
print "\n-------------------------------------"
my_table("HunterBee")
5.times do | index |
	hunterbee[index] = Hunter.new(index)
	hunterbee[index].info
end
print "\nAttack(Y/N)??? "
command = gets.to_s.chomp
puts hunterbee[1].death
while command.eql?"y"
	my_table("QueenBee")
	5.times do |index|
		queenbee[index].attack
		queenbee[index].info
	end
	print "\n-------------------------------------"
	my_table("HunterBee")
	5.times do |index|
		hunterbee[index].attack
		hunterbee[index].info
	end
	print "\nAttack(Y/N)??? "
	command = gets.to_s.downcase
end

