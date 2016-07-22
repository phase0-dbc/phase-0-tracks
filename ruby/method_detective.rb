# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

swapcase = "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
p swapcase

insert = "zom".insert(1, "o")
# # => “zoom”
p insert

center = "enhance".center(18, " ")
# => "    enhance    "
p center

dangerous_upcase = "Stop! You’re under arrest!".upcase!
safe_upcase = "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p dangerous_upcase
p safe_upcase

replace = "the usual".replace("the usual suspects")
#=> "the usual suspects"
p replace

prepend = " suspects".prepend("the usual")
# => "the usual suspects"
p prepend

chop = "The case of the disappearing last letter".chop
chomp = "The case of the disappearing last letter".chomp("r")
# => "The case of the disappearing last lette"
p chop 
p chomp

delete = "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"
p delete

squeeze = "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"
p squeeze

ord = "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?) 
# - it's the number that represents that character - each character has its
# own unique number 
p ord

count = "How many times does the letter 'a' appear in this string?".count("a")
# => 4
p count

   

