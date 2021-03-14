def salute(name, salutation)
  "#{salutation.capitalize} Mr. #{name.split(' ').last}"
end

puts salute("Nelson Rolihlahla Mandela", "hello")
puts salute("Sir Alan Turing", "welcome")
