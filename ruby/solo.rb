# DESIGN A CLASS: BICYCLE which will have...
#
# at least 3 ATTRIBUTES (using at least two data types):
# color (string), age (integer), functional (boolean) &
# bling (array of strings),
#
# and at least 3 METHODS, at least one of which takes an argument:
# paint_job (change color, takes new_color as parameter), add_bling 
# (takes new_bling), plus_year (increment age, no parameter) &
# mechanic (change status of functional, no parameter)
#__________________________________________________________

# Initialize new instance with parameters color and bling as input.
# Set age to '0' and functional to 'true' by default

# Similarly, allow color and bling read/write priviledges to outside of
# class, but age and functional read only.

class Bicylcle
  attr_reader :age, :functional
  attr_accessor :color, :bling	

  def initialize(color, bling)
    puts "Initializing Bicylcle instance ..."
    @color = color
    @age = 0
    @bling = bling
    @functional = true
  end

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
# entering or leaving a shop, i.e., was working, now is not, or 
# vice versa, then prints the new status of the bike's functional.

  def mechanic
    if @functional
    	@functional = false
    else
    	@functional = true
    end

    if @functional
      puts "The bike is working again!"
    else
      puts "The bike is in the shop! :("
    end
  end

# Create method to group data into a hash for easy print-out

  def group_data
    data_hash = {color: @color, bling: @bling, age: @age, functional: @functional}
  end
     
end

#__________________________________________________________
# DRIVER CODE to verify

# bike = Bicylcle.new("red", ["horn", "reflectors", "streamers"])

# bike.add_bling("aerobars")
# bike.plus_year
# bike.mechanic
# bike.paint_job("orange")
# bike.mechanic
#__________________________________________________________

# USER INTERFACE  Ask user if they want to create a new bike
# ntil they answer 'no'. Ask for desired color and decorations.  
# Create the bike and store new bike info in an array 'new_bikes'.

# Establish initial values for array to receive new bike data,
# any_bikes variable to determine printout at end, and
# answer variable for input-request loop
 

new_bikes = []
any_bikes = true
answer = nil

until answer == "no"

  puts "Would you like to create a new bike?  Type 'yes' or 'no'"
  answer = gets.chomp

    if answer == "yes"

# Ask for color and store in string variable 'color'.

      puts "What color would you like it to be?"
      color = gets.chomp

# Ask for decorations until user indicates they are done.
# Store in array 'bling'.

      bling = nil
      bling_set = []

      until bling == "done"
        puts "What decorative accessories would you like it to have?"
        puts "Type 'done' when done."
        bling = gets.chomp
        break if bling == "done"

        bling_set << bling
      end

# Create new bike, add data hash to new_bikes array

      bike = Bicylcle.new(color, bling_set)

      new_bikes << bike.group_data
      

    elsif answer == "no"
      if new_bikes != []
        puts "Alright, that's enough bikes for now."
      else
        any_bikes = false
      end
      puts " "

    else
      puts "I didn't understand your answer."
      puts "Please type 'yes' or 'no'." 
    end 
end        

#__________________________________________________________
# Print out characteristics of new bikes created, if any
# Print bling array in plain english

if any_bikes
  puts "Here are the new bikes you created:"
  puts " "

  counter = 0

  until counter == new_bikes.length
    puts "Bike Number #{counter + 1}"

    new_bikes[counter].each do |key, value|
      if key == :bling
          if value == []
            puts "#{key}: none"
          else
            puts "#{key}: #{value.join(', ')}"
          end  
      else
        puts "#{key}: #{value}"
      end

    end
    counter += 1
    puts " "
    
  end   

else
  puts "No bikes entered.  Have a nice day."

end




