todos = [  ["Send invoice", "money"],  ["Clean room", "organize"],  ["Pay rent", "money"],  ["Arrange books", "organize"],  ["Pay taxes", "money"],  ["Buy groceries", "food"]]
puts "#{todos}"
new_todos = []
todos.each {|arr|
    if(!new_todos.include?(arr[1]))
        new_todos.push(arr[1])
    end
}
new_todos = new_todos.map{|ele| [ele,[]]}
todos.each{|arr|
    key = arr[1]
    val= arr[0]
    new_todos.each{|mainArr|
        if(key == mainArr[0])
            mainArr[1].push(val)
        end
    }
}
puts "#{new_todos}"
new_todos.each{|arr|
  puts arr[0] + ":"
  arr[1].each{ |task|
    puts " "+ task
  }
}
