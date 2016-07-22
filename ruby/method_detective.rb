# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

#squeeze = "zom".
# => “zoom”
#p squeeze

# "enhance".<???>
# => "    enhance    "

dangerous_upcase = "Stop! You’re under arrest!".upcase!
safe_upcase = "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p dangerous_upcase
p safe_upcase

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

chop = "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"
p chop 

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

ord = "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
p ord

count = "How many times does the letter 'a' appear in this string?".count("a")
# => 4
p count



