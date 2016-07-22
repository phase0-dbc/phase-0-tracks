# ask user for client's name, age, number of children, decor theme, and whether or not they have a dog
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key 
  # If the designer says "none", skip it.
  # otherwise have designer enter the key and new value
    # convert value to appropriate data type 
    # update hash  
# Print the latest version of the hash, and exit the program.


class Client

  def initialize
    @client_info = {}
  end

  def prompt_user
    puts "Enter client's info: name, age, decor theme, and whether or 
not they have a dog (yes/no)  - press enter after each answer."
    name = gets.chomp
    age = gets.chomp.to_i
    decor_theme = gets.chomp
    dog = gets.chomp == 'yes'
    @client_info = {name: name, age: age, decor_theme: decor_theme, dog: dog} 
  end

  def print_info
    @client_info.each {|key, value| puts "#{key}: #{value}"}
  end

  def update
    puts "If you want to update anything enter the symbol name and the 
update making sure to hit enter between in between - if done type 'none'"
    key = gets.chomp
    if key == 'none'
      return @client_info
    else
      key = key.to_sym
      value = gets.chomp
      clean_data(value)
      @client_info[key] = value
    end
    print_info
  end

  def clean_data(str)
    if str == 'yes' || str == 'no'
      str = str == 'yes'
    elsif str.to_s != 0
      str = str.to_i
    else 
      str = str
    end
    str
  end

end

client = Client.new
client.prompt_user
client.print_info
client.update




