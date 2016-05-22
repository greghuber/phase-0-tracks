# METHOD TO CREATE A GROCERY LIST
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
def create_list(items)
  # steps: 
  # Take items and create array of words
  array = items.split(' ')
  
  # create hash and set default quantity to zero
  list = Hash.new(0)

  # Step through array of items populating hash with items as keys with values of zero
  array.each do |item|
  	list[item.to_sym] = 0
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

add_item(gregs_list, "Tomatoes", 3)
add_item(gregs_list, "Onions", 1)
add_item(gregs_list, "Ice Cream", 2)

print_list(gregs_list)

puts " "

remove_item(gregs_list, "Lemonade")

update_quantity(gregs_list, "Ice Cream", 1)

puts "New list with Lemonade removed and Ice Cream quantity 1"
print_list(gregs_list)

