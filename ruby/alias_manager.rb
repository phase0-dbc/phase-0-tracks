
#prompt user for name
#swap first and last name
#change all the vowels in their name to the next vowel
#Change all of the consonants to the next consonant in the alphabet
  
  @name = ''
  @alias = ''
  @names = {}
  
  def swap
    @alias = @name
    @alias = @alias.downcase
    @alias = @alias.split
    swapped = []
    @alias.reverse_each {|x| swapped << x}
    @alias = swapped
  end
  
  def char_changer(name_ary)
    vowels = "aeiou"
    consonants = "bcdfghjklmnpqrstvwxyz"
    char_ary = name_ary.join(' ').chars
    i = 0
    char_ary.map! do |char|
      if char == 'u'
        char = 'a'
      elsif char == 'z'
        char = 'b'
      elsif char == ' '
        char = char
      elsif vowels.include?(char)
        char = vowels[(vowels.index(char) + 1)]
      else 
        char = consonants[(consonants.index(char) + 1)]
      end
    end
    char_ary
  end
  
  def alias_generater
    swap
    name = @alias
    @alias = char_changer(name)
    @alias = @alias.join.split
    @alias.each {|x| x.capitalize!}
    @alias = @alias.join(' ')
    @alias
  end