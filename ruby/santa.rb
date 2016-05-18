# Create Santa class with:
# A speak method, an eat_milk_and_cookies method, and an initialize method

class Santa

  def speak
  	puts "Ho, ho, ho!  Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
  	puts "That was a good #{cookie} cookie!"
  end

  def initialize
  	puts "Initializing Santa instance ..."
  end
end

# Initialize a Santa and verify instance methods

kris = Santa.new

kris.speak
kris.eat_milk_and_cookies("chocolate chip with macadamia nuts")

