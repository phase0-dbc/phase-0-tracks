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

