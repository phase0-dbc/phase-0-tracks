# word guessing game
# - have user 1 enter a word (or phrase, if you would like your game to support that),
# - have another user (user 2) attempt to guess the word.
# - Guesses are limited, and the number of guesses available is related to the length of the word.
# - Repeated guesses do not count against the user.
# - guessing player receives continual feedback on the current state of the word.
  
  # - if the secret word is "unicorn", the user will start out seeing something like
  # "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".

# - The user should get a congratulatory message if they win, and a taunting message if they lose.

#class Guess_word
class Guess_word

  attr_accessor :guessed, :word, :num_guesses

#method initialize(word)
  #@word
  #@num_guesses = word.length 
  #@correct_guesses
  #@past_guesses(array)
  def initialize(word)
    @word = word
    @num_guesses = word.length
    @guessed = []
    @past_guesses = []
  end 

#method makes_secret
  #gets length of word - 1
  #variable guessed will be length - 1 times '_ ' + '_'
  def makes_secret
    length = @word.length
    @guessed = @guessed.push('_') * length
  end

#method passed_guesses(guess)
  #set variable new_guess to true
  #if guess is not in past_guesses array
    #add guess to past guesses
  #else 
    #new_guess equals false
    #tell the user the already guessed that letter
  #return new_guess
  def passed_guesses(guess)
    new_guess = true
    if !@past_guesses.include?(guess)
      @past_guesses << guess
      @num_guesses -= 1
    else
      new_guess = false
      puts "You already guessed the letter #{guess}."
    end
    new_guess
  end

#method is_correct?(guess)
  #set variable new_guess to true
  #if guess is not in word
    #new_guess equals false
    #tell user their guess is wrong
  #return new_guess
  def is_correct?(guess)
    new_guess = true
    if !@word.include?(guess)
      new_guess = false
      puts "Nope! Guess again."
    end
    new_guess
  end

  #method current_guess(guess)
  #if is_correct and passed_guesses methods return true 
    #find index and insert letter at same index in guessed variable
    #num_guesses -= 1
  #end
  def current_guess(guess)
    if passed_guesses(guess) && is_correct?(guess)
      @word.chars.each_with_index do |let, i| 
        if let == guess
          @guessed[i] = let
        end
      end
    end
    @guessed
  end

end 

# USER INTERFACE

puts 'This is a game for two people, one person enters a 
word, the other person attempts to guess the word.'

puts ''

puts 'Enter the word to be guessed.'
word = gets.chomp
guess_word = Guess_word.new(word)

puts ''
guess_word.makes_secret

puts "You are allowed #{guess_word.num_guesses} guesses."

loop do

  if guess_word.guessed.join == guess_word.word 
    puts guess_word.guessed.join(' ')
    puts 'Awesome you win!'
    break
  end
  if guess_word.num_guesses == 0
    puts 'Looks like you used up all your guesses and umm, lost.'
    break
  end
  puts 'Enter a letter you think might be in the word'
  puts guess_word.guessed.join(' ')
  guess = gets.chomp
  puts ''
  guess_word.current_guess(guess)

end




