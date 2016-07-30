# class Puppy

#   def initialize
#     puts "Initializing new puppy instance ..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(num)
#     num.times {|i| puts "Woof!"}
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(num_human_years)
#     age = num_human_years * 7
#   end

#   def jump(item)
#     puts "*jumps over #{item}*"
#   end

# end

# venus = Puppy.new
# venus.fetch("ball")
# venus.speak(3)
# venus.roll_over
# venus.dog_years(10)
# venus.jump("table")

class Violinist

  def initialize
    puts "Making new violin player!"
  end

  def perform(composer)
    puts "Performs music by #{composer}"
  end

  def years_playing(num_years)
    time = num_years == 1
    if time
      puts "This violinist has been play for #{num_years} year"
    else
      puts "This violinist has been play for #{num_years} years"
    end
  end

end

violinist_ary = []
50.times {|i| violinist_ary << Violinist.new}

composers = ["Bach", "Mozart", "Brahms", "Paganini", "Beethoven"]
violinist_ary.each do |violinist|
  violinist.perform(composers.sample)
  violinist.years_playing(rand(30) + 1)
end





