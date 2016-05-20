# RELEASE ZERO: Define module Shout

#module Shout
  
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#    words + "!!!" + " :)"
#  end

#end

#___________________________________________________
# RELEASE ONE: DRIVER CODE

#puts Shout.yell_angrily("Gosh Darnit... Dang")

#puts Shout.yell_happily("Yay, yippee... Whoohoo")

#___________________________________________________
# RELEASE THREE: CONVERT STANDALONE MODULE TO MIXIN

module Shout
  
  def yell_angrily(words)
    puts "#{words + "!!!" + " :("}"
  end

  def yell_happily(words)
    puts "#{words + "!!!" + " :)"}"
  end

end  

class Baseballplayer
  include Shout
end

class Parent
  include Shout
end

player = Baseballplayer.new
player.yell_angrily("Hey Ump... Are you blind?")
player.yell_happily("Whoohoo... We win")

puts " "

parent = Parent.new
parent.yell_angrily("Hey! Who broke this?")
parent.yell_happily("That's my boy")




