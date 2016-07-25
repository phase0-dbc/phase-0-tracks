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

#scan the list (array) of numbers from left to right while counter is less than length
#set scanner variable equal to false because if it is still false after a scan then array
#is in order and can be returned 
  #while current index is less than variable unsorted_length
    #compare current index to adjacent index
      #if current index is grater than adjacent index 
      #make current index equal to adjacent index
      #set scanner variable to true 
  #decrease unsorted_length by one
  #break if swapped is still false
#return array


def bubble_sort(num_ary)
  unsorted_length = num_ary.length - 1 
  (num_ary.length - 1).times do |i|
    swapped = false
    unsorted_length.times do |j|
      if num_ary[j] > num_ary[j+1]
        num_ary[j], num_ary[j+1] = num_ary[j+1], num_ary[j]
        swapped = true
      end
    end
    unsorted_length -= 1
    break if not swapped
  end
  num_ary
end

p bubble_sort([1,2,3,4,5])
p bubble_sort([4,8,2,1,6,5,9,7,3])




