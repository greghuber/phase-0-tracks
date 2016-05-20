class TodoList
  attr_accessor :item

  def initialize(item)
  	@item = item
  	return item
  end

  def add_item(thing)
  	@item << thing
  end

  def delete_item(remove)
  	@item.delete(remove)
  end

  def get_items
    return @item
  end

#  def print
#  	puts "#{@item}"
#  end
def get_item(x)
	return @item[x]
end
end

# create = TodoList.new(["things", "other things"])
# create.print
#create.add_item("stuff")
#create.print
#create.delete_item("things")
#create.print