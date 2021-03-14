todos = [  ["Send invoice", "money"],  ["Clean room", "organize"],  ["Pay rent", "money"],  ["Arrange books", "organize"],  ["Pay taxes", "money"],  ["Buy groceries", "food"]]
hash = {}

todos.each{|arr|
  if(!hash[arr[1].to_sym])
    hash[arr[1].to_sym] = []
  end
  hash[arr[1].to_sym].push(arr[0])
}
puts "#{hash}"
