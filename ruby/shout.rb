module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :)" 
  end

end

# p Shout.yell_angrily("Stop it")
# p Shout.yelling_happily("You're the best")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)" 
  end
end

class Teacher
  include Shout
end

class Mama
  include Shout
end

teacher = Teacher.new
p teacher.yell_angrily("Could ya'll be quiet for once")
p teacher.yelling_happily("Good job today")

mama = Mama.new
p mama.yell_angrily("Stop fighting")
p mama.yelling_happily("Have a good day")

