# METHOD TO CREATE A GROCERY LIST
# input: string of items separated by spaces (example: "carrots apples cereal pizza")



def create_list(items)
  # Take items and create array of words
  array = items.split(' ')
  
  # create hash and set default quantity to zero
  list = Hash.new(0)

  # Step through array of items populating hash with items as keys with values of zero
  array.each do |item|
  	list[item.to_sym] = 1
  end

  # print the list to the console
  list.each do | item, quantity|
  	puts "#{item}: #{quantity}"
  end

# output: [what data type goes here, array or hash?] HASH
  list
end

# METHOD TO ADD AN ITEM TO A LIST
# input: item name and optional quantity
def add_item(list, thing, quantity)
# steps: Assign value 'quantity' to key 'thing'	
  list[thing.to_sym] = quantity
# output: Array with new key-value pair added.
  list
end

# METHOD TO REMOVE AN ITEM FROM A LIST
# input: item name to be removed
def remove_item(list, thing)
# steps: delete key-value pair if key is item indicated
  list.delete_if { |key, value| key == thing.to_sym }
# output: Array with desired item removed
  list
end

# METHOD TO UPDATE THE QUANTITY OF A LIST
# input: item and new quantity 
def update_quantity(list, thing, quantity)
# steps: for designated key, reassign value to new quantity
  list[thing.to_sym] = quantity
# output: Array with revised value
  list
end

# METHOD TO PRINT A LIST AND MAKE IT LOOK PRETTY
def print_list(list)
# input:
# steps:
  puts "Here is the list for the grocery store:"
  list.each do | item, quantity|
  	puts "#{item}: get #{quantity}"
  end
# output:
end



gregs_list = create_list("Milk Bread Wine Cheese")


puts " "

add_item(gregs_list, "Lemonade", 2)
add_item(gregs_list, "Tomatoes", 3)
add_item(gregs_list, "Onions", 1)
add_item(gregs_list, "Ice Cream", 2)

print_list(gregs_list)

puts " "

remove_item(gregs_list, "Lemonade")

update_quantity(gregs_list, "Ice Cream", 1)

puts "New list with Lemonade removed and Ice Cream quantity 1"
print_list(gregs_list)

# RELEASE 5: Reflect
#
# 1) What did you learn about pseudocode from working on this challenge?
#
#    I think my pseudocode has been pretty meaningful, so more I think what i
#    take away here is the idea of responding to someone else's pseudocode,
#    which may be a practical lesson.
#
#
# 2) hat are the tradeoffs of using arrays and hashes for this challenge?
#
#    Arrays seem slightly simpler to create and modify, but the power of the 
#    hash to pair key and value, here item and quantity seems necessary
#
#
# 3) What does a method return?
#
#    The method returns the value of last line of code, so the value to which
#    an expression evaluates, or in the case of a puts statement, which prints
#    what its code directs it to, but has no return value, so 'nil' is returned.
#
#
# 4) What kind of things can you pass into methods as arguments?
#
#    Strings, Integers, Boolean, Hashes, Arrays
#
#----------------------------------------------------------------
#
#  BIG QUESION !!!!!
#
#
# 5) How can you pass information between methods?
# 6) What concepts were solidified in this challenge, and what concepts are still confusing?
#
#    I group these last two because I think I'm missing something about the first question that 
#    defines my confusion in the second.  My code works, but it works because, for example, I 
#    pass the list in as an argument with the item and quantity to add_item, but the pseudocode
#    we were given to start describes the item and quantity being the inputs so..
#
#      add_item(gregs_list, "Lemonade", 2)  works, but I feel like I should be able to code
#
#      gregs_list.add_item("Lemonade", 2)  which would have input more like the provided pseudocode.
#
#    Am I wrong here?  Thinking of the method as the robot in a box that was in our prep video, 
#    I can't think of how the method would add the key-value pair to the hash without also being
#    provided the hash.













