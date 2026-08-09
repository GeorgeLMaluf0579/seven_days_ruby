def sum_by_status(orders, status)
  if status.nil?
    orders.reduce(0) do |sum , o| 
      sum + o[:quantity]
    end
  else
    orders.select{ |p| p[:status] == status}
         .reduce(0) do |sum, order|
           sum + order[:quantity]
         end
  end
end


orders = [
  { id: 1, user_id: 1, product_id: 1, quantity: 1, status: "paid" },
  { id: 2, user_id: 2, product_id: 2, quantity: 2, status: "paid" },
  { id: 3, user_id: 1, product_id: 4, quantity: 1, status: "pending" },
  { id: 4, user_id: 3, product_id: 3, quantity: 1, status: "cancelled" },
  { id: 5, user_id: 4, product_id: 5, quantity: 2, status: "paid" },
  { id: 6, user_id: 5, product_id: 2, quantity: 3, status: "paid" }
]

orders_summary = {
  paid: sum_by_status(orders, "paid"),
  pending: sum_by_status(orders, "pending"),
  cancelled: sum_by_status(orders, "cancelled"),
  total_products: sum_by_status(orders, nil)
}

puts orders_summary.to_s
