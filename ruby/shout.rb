module Shout
  def yell_angrily(words)
    puts "#{words}" + "!!!" + " :("
  end

  def yelling_happily
  	puts "I am happy!"
  end
end

class Mom
	include Shout
end

class Dad
	include Shout
end

mom = Mom.new
mom.yell_angrily("No")

dad = Dad.new
dad.yelling_happily

