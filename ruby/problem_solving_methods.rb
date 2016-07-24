#loop through ary 
  #if num is equal to num store index in variable (match)
#if match is not empty return match else return nil

def find_num(num_ary, num_to_find)
  match = []
  i = 0
  num_ary.each do |num|
    if num == num_to_find
      match << i
    end
    i += 1
  end
  match.empty? ? nil : match
end

arr = [42, 89, 23, 1, 1]
p find_num(arr, 1)

#have array [0,1]
#while index is grater than than 1 and less than length asked
  #add index 0 and 1 together and store in var new_index
  #add sum to array
  #new_index = 0 
  #add 1 to index
#return array

def fib(num_fib_terms)
  fib_ary = [0,1]
  index = 1
  new_index = 0
  while fib_ary.length < num_fib_terms
    new_index = fib_ary[index] + fib_ary[index - 1]
    fib_ary << new_index
    new_index = 0
    index += 1
  end
  fib_ary
end

p fib(6)
test = fib(100)
if test[99] == 218922995834555169026
  puts "Works!"
end



