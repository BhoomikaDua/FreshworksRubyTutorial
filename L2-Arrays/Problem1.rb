names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
puts "#{names}"
new_names = names.map {|arr| arr[0]+" "+arr[1]}
puts "#{new_names}\n\n"
