class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times {puts "Woof!"}
  end

  def roll_over
  	puts "*Rolls over*"
  end

  def dog_years(age)
  	puts age * 7
  end

  def play_dead
  	puts "*He begins to play dead*"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end
end
#--------------------------------
class Computer
	
	def initialize
		puts "Initializing new computer build"
	end

	def intel(core)
		puts "You have installed an Intel #{core} processor."
		
	end

	def overall_price(price)
		puts "Your computer cost #{price} dollars."
	end
end
	
computer_array = []
loop_num = 0 

while loop_num < 50
	computer_array.push(Computer.new)
	loop_num += 1
end

computer_array.each do |component|
	component.intel("i7")
	component.overall_price("one million")
end
#--------------------------------
#Driver code for class computer 
GB = Computer.new
GB.intel("i3")
GB.overall_price("two-hundred")

#--------------------------------
#Driver code for class puppies
Coco = Puppy.new

#Fetch
puts "~~Testing fetch~~"
Coco.fetch("ball")

#Speak
puts "~~Testing speak~~"
Coco.speak(3)

#Roll-over
puts "~~Testing rolls_over~~"
Coco.roll_over

#Dog years
puts "~~Testing dog years~~"
Coco.dog_years(5)

#Play dead
puts "~~Testing play dead~~"
Coco.play_dead

