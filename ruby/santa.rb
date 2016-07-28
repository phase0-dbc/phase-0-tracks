class Santa

  def initialize
    puts "Initializing Santa instance ..."
  end

  def speak
    "Ho, ho, ho! Haaaappy holidays!" 
  end

  def eat_milk_and_cookies(cookie_type)
    "That was a good #{cookie_type}"
  end

end

santa1 = Santa.new
p santa1.speak
p santa1.eat_milk_and_cookies("chocolate chip cookie")