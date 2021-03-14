books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
new_books = books.map.with_index {|book, i| "#{book} was written by #{authors[i]}"}
puts new_books
puts "\n\n"
