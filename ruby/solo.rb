class BuildComputer

attr_reader :cpu_model, :gpu_model
attr_accessor :budget, :cpu, :gpu

def initialize(cpu, gpu, budget)
	@cpu = cpu
	@gpu = gpu
	@budget = 0
	@cpu_model = ["1x", "2x", "3x"]
	@gpu_model = ["4a", "5a", "6a"]
end

def desired_budget(amount)
	puts "New updated and realistic budget = $ #{amount + 1000}"
end

def chosen_cpu
	@cpu_model.sample
end

def chosen_gpu
	@gpu_model.sample
end
end

computer_build = []
computer_finished = false

puts "Initializing computer builder."

until computer_finished

	puts "Which cpu company do you trust the most?"
	cpu = gets.chomp

	puts "Which gpu company do you trust the most?"
	gpu = gets.chomp

	puts "What is your budget?"
	budget = gets.chomp.to_i

	computer = BuildComputer.new(cpu, gpu, budget)
	computer_build.push(computer)

	puts "Build another computer? (y/n)"
	y_n = gets.chomp

	if y_n == "n"
		puts "Computers have been added to the array."
		computer_finished = true
	end
end	

computer_build.each_with_index do |computer, i|
	puts "Computer #{i} finished. With a budget of #{computer.budget}, you can complete a computer with a #{computer.cpu} CPU, model #{computer.chosen_cpu}. This also contains a #{computer.gpu} GPU, model #{computer.chosen_gpu}. Enjoy."

end


