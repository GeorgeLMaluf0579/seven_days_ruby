orders = [
  { id: 1, user_id: 1, product_id: 1, quantity: 1, status: "paid" },
  { id: 2, user_id: 2, product_id: 2, quantity: 2, status: "paid" },
  { id: 3, user_id: 1, product_id: 4, quantity: 1, status: "pending" },
  { id: 4, user_id: 3, product_id: 3, quantity: 1, status: "cancelled" },
  { id: 5, user_id: 4, product_id: 5, quantity: 2, status: "paid" },
  { id: 6, user_id: 5, product_id: 2, quantity: 3, status: "paid" }
]

order_quantities = orders.map do |order|
    order[:quantity]
end

total = order_quantities.reduce(0) do |sum, number|
  sum + number
end

puts total
