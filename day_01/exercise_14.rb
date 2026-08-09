products = [
  { id: 1, name: "Notebook", category: "electronics", price: 4500.00, stock: 10 },
  { id: 2, name: "Mouse", category: "electronics", price: 120.00, stock: 50 },
  { id: 3, name: "Keyboard", category: "electronics", price: 250.00, stock: 0 },
  { id: 4, name: "Chair", category: "furniture", price: 850.00, stock: 15 },
  { id: 5, name: "Desk", category: "furniture", price: 1200.00, stock: 5 }
]

puts products.all? { |product| product[:stock] > 0 }
