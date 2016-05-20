class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def initialize
		puts "initializing Santa instance..."
	end
end

#Driver code
Test_santa = Santa.new
Test_santa.eat_cookies("chocolate-chip")
Test_santa.speak

