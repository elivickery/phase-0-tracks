# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!!" + " :)"
#   end
# end

# puts Shout.yelling_happily('Hello world')

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!!" + " :)"
  end
end

class Joe
	include Shout
end

class Jane
	include Shout
end 

joe = Joe.new
puts joe.yell_angrily('Goodbye cruel world')

jane = Jane.new
puts jane.yelling_happily('Hello cruel world')
