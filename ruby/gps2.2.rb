# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

grocery_list = {}
def create_hash(items, groc_list)

	items_array = items.split(' ')
	items_array.length.times do |count|
	items_hash = items_array[count].to_sym
	groc_list[items_hash] = 3
	p groc_list
end
end
create_hash("carrot apples cereal pizza", grocery_list)

# Method to add an item to a list
# input: item name and optional quantity
# steps: define a method 
#add new hash item and quantity
# output: print hash list

def add_item(item, amount, groc_list)

	item = item.to_sym
	amount = amount.to_i
	groc_list[item] = amount
	p groc_list
end

add_item("water", 2, grocery_list)

# Method to remove an item from the list
# input: hash item name
# steps: define a method
#hash list name .delete("hash item name")
# output: print hash list

def remove_item(item, groc_list)

	groc_list.delete(item)
	p groc_list
end
remove_item(:apples, grocery_list)

# Method to update the quantity of an item
# input: existing item name and new quantity
# steps: define a method
#select existing hash item and update quantity
# output: print hash list

def update_item(item, amount, groc_list)
	groc_list[item] = amount
	p groc_list
end
update_item(:carrot, 4, grocery_list)

# Method to print a list and make it look pretty
# input: none
# steps: puts "#{}" for each item, quantity
#repeat for each item
# output: print refined list

def print_list(groc_list)
	groc_list.each do |item, amount|
		puts "You need #{amount} of #{item}."
		end
		end
print_list(grocery_list)  