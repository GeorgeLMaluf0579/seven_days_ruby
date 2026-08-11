orders = [
  { id: 1, category: "books", total: 100 },
  { id: 2, category: "electronics", total: 500 },
  { id: 3, category: "books", total: 200 },
  { id: 4, category: "electronics", total: 300 },
  { id: 5, category: "furniture", total: 400 }
]

totals = orders.each_with_object(Hash.new(0)) do |order, hash|
  hash[order[:category]] += order[:total]
end

puts totals
