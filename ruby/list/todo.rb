class TodoList
	def initialize(task1)
		@task1 = ["do the dishes", "mow the lawn"]
	end

	def get_items
		@task1
	end

	def add_item(task2)
 		@task1.push(task2)
 	end
	
	def delete_item(task3)
		@task1.delete(task3)
	end

	def get_item(pos)
		@task1[pos]
	end
end

