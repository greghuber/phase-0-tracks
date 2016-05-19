# DESIGN A CLASS: BICYCLE which must have...
#
# at least 3 ATTRIBUTES (using at least two data types) whose values 
# will vary from instance to instance (example: age):
# color (string), age (integer), functional (boolean) &
# bling (array of strings),
#
# and at least 3 METHODS, at least one of which takes an argument:
# paint_job (change color, takes new_color as parameter), add_bling 
# (takes new_bling), plus_year (increment age, no parameter) &
# mechanic (change status of functionality, no parameter)
#__________________________________________________________

# Initialize new instance with parameters color and bling as input.
# Set age to '0' and functionality to 'true' by default

# Similarly, allow color and bling read/write priviledges to outside of
# class, but age and functionality read only.

class Bicylcle
  attr_reader :age, :functionality
  attr_accessor :color, :bling	

  def initialize(color, bling)
    puts "Initializing Bicylcle instance ..."
    @color = color
    @age = 0
    @bling = bling
    @functionality = true
  end

  
# Similarly, allow color and bling read/write priviledges to outside of
# class, but age and functionality read only.

# Define method paint_job to take new color as parameter and assign that
# to @color, printing the new status of the bike's color.

  def paint_job(new_color)
    @color = new_color
    puts "The bike is now sporting the color #{@color}!"
  end

# Define method add_bling to take new color as parameter and assign that
# to @color, printing the new status of the bike's color.

  def add_bling(new_bling)
    @bling << new_bling
    puts "The bike now has #{@bling.join(', ')} for bling."
  end

# Define method plus_year which takes no parameter, but increments the
# bike's age one year, then prints the new status of the bike's age.

  def plus_year
    @age += 1
    puts "The bike is now #{@age} years old."
  end

# Define method mechanic which takes no parameter, but describes a bike
# entering or leaving a shop, that is was working, now is not or 
# vice versa, then  prints the new status of the bike's functionality.

  def mechanic
    if functionality
    	functionality = false
    else
    	functionality = true
    end

    if functionality
      puts "The bike is working again!"
    else
      puts "The bike is in the shop! :("
    end
  end
end

bike = Bicylcle.new("red", ["horn", "reflectors", "streamers"])

bike.add_bling("aerobars")



