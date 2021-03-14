books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

hash ={}
books.map.with_index{ |booke,i|
  key = authors[i].split(' ')[0].downcase
  hash[key.to_sym] = books[i]
}
puts "#{hash}"
