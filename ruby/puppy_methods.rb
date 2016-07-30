class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {|i| puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num_human_years)
    age = num_human_years * 7
  end

  def jump(item)
    puts "*jumps over #{item}*"
  end

end

venus = Puppy.new
venus.fetch("ball")
venus.speak(3)
venus.roll_over
venus.dog_years(10)
venus.jump("table")

