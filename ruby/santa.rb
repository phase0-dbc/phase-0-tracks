class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
    # puts "Initializing Santa instance ..."
  end

  def speak
    "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie_type)
    "That was a good #{cookie_type}"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking << @reindeer_ranking.delete(reindeer)
  end
 
end

# santa1 = Santa.new
# p santa1.speak
# p santa1.eat_milk_and_cookies("chocolate chip cookie")

# santas = []
# genders.each_index do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
#   puts santas[i].speak
#   puts santas[i].eat_milk_and_cookies("chocolate chip cookie")
# end

# p santas

# santas[0].celebrate_birthday
# santas[0].get_mad_at("Dasher")
# p santas[0].age
# p santas[0].ethnicity
# santas[0].gender = "male"

# p santas[0]

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

150.times do |santa|
  santa = Santa.new(genders.sample, ethnicities.sample)
  santa.age = rand(140)
  puts "Gender: #{santa.gender}"
  puts "Ethnicity: #{santa.ethnicity}"
  puts "Age: #{santa.age}"
  puts
end




