def run(name, miles)
  puts "Running feels good!"
  yield(name, miles)
end

run("Tom", 5) {|name, miles| puts "#{name} will run #{miles} miles today."}


students_2014 = {"Ava" => 20, "Tom" => 21, "Sara" => 20, "Avery" => 22, "Noah" => 19}
todo_list = ["run", "get food", "check email", "swim", "mail letter"]

students_2014.each {|name, age| puts "#{name} is #{age}"}

todo_list.each {|item| puts item}

todo_list.map! {|item| puts "#{item} √"}