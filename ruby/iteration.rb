def run(name, miles)
  puts "Running feels good!"
  yield(name, miles)
end

run("Tom", 5) {|name, miles| puts "#{name} will run #{miles} miles today."}

students = {
  "Ava" => 20, 
  "Tom" => 21, 
  "Sara" => 20, 
  "Avery" => 22, 
  "Noah" => 19
}
todo_list = ["run", "get food", "check email", "swim", "mail letter"]

students.each {|name, age| puts "#{name} is #{age}"}

todo_list.each {|item| puts item}

todo_list.map! {|item| item << ' √'}
p todo_list

numbers = [1,2,3,4,5,6,7,8,9]
students = {
  "Ava" => 20, 
  "Tom" => 21, 
  "Sara" => 20, 
  "Avery" => 22, 
  "Noah" => 19
}

numbers.delete_if {|num| num < 4}
p numbers

students.delete_if {|name, age| name.length < 4}
p students

numbers.keep_if {|num| num.even?}
p numbers

students.keep_if {|name, age| age > 19}
p students

more_numbers = [1,2,3,4,5,6,7,8]
letters = {a: "b", c: "d", e: "z", g: "q"}

more_numbers.select! {|num| num.odd?}
p more_numbers

letters.select! {|key, value| value.ord.even?}
p letters

num = more_numbers.drop_while {|num| num < 5 }
p num

letters.reject! {|key, value| value.ord < 110 }
p letters



