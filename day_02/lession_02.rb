products = [
  { name: "Notebook", category: "electronics" },
  { name: "Mouse", category: "electronics" },
  { name: "Keyboard", category: "electronics" },
  { name: "Chair", category: "furniture" },
  { name: "Desk", category: "furniture" },
  { name: "Book", category: "books" }
]


grouped = Hash.new { |hash, key| hash[key] = [] }

products.each do |product|
  grouped[product[:category]] << product
end

puts grouped

transformed = grouped.transform_values { |product| product.map { |p| p[:name] } }

puts transformed
