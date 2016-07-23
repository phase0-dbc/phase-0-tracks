def run(name, miles)
  puts "Running feels good!"
  yield(name, miles)
end

run("Tom", 5) {|name, miles| puts "#{name} will run #{miles} miles today."} 