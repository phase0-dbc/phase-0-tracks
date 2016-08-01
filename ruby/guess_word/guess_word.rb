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

#method initialize(word)
  #@word
  #@num_guesses = word.length 
  #@correct_guesses
  #@past_guesses(array)
def initialize(word)
  @word = word
  @num_guesses = word.length
  @guesses = ""
  @past_guesses = []
end 

#method makes_secret
  #gets length of word - 1
  #variable guessed will be length - 1 times '_ ' + '_'
def makes_secret
  length = @word.length
  s = '_ '
  @guessed = s * (length - 1) + '_'
end

#method passed_guesses(guess)
  #set variable new_guess to true
  #if guess is not in past_guesses array
    #add guess to past guesses
  #else 
    #new_guess equals false
    #tell the user the already guessed that letter
  #return new_guess

#method is_correct?(guess)
  #set variable new_guess to true
  #if guess is not in word
    #new_guess equals false
    #tell user their guess is wrong
  #return new_guess

  #method current_guess(guess)
  #if is_correct and passed_guesses methods return true 
    #find index and insert letter at same index in guessed variable
    #num_guesses -= 1
  #end
end 
# USER INTERFACE

#if correct_guesses is the same as word 
    #tell the user awesome you win!
  #end
  #if num_guesses == 0



