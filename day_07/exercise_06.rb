def paid_orders(orders)
  orders.select { |order| order[:status] == :paid }
end

def customer_names(orders)
  orders.map{ |order| order[:customer] }
end

def find_order(orders, id)
  orders.select { |order| order[:id] == id }
end

def total_revenue(orders)
  paid_orders(orders).reduce(0) { |sum, order| sum + order[:total] }
end

def orders_by_id(orders)
  result = {}
  orders.each do |order|
    key = yield(order)
    result[key] = order
  end

  result
end


orders = [
  { id: 1, customer: "George", total: 150, status: :paid },
  { id: 2, customer: "Mary", total: 300, status: :pending },
  { id: 3, customer: "John", total: 100, status: :paid },
  { id: 4, customer: "George", total: 250, status: :paid }
]

payed = paid_orders(orders)
customers = customer_names(orders)
the_order = find_order(orders, 3)
total = total_revenue(orders)
indexed_orders = orders_by_id(orders) do |order|
  order[:id]
end

puts payed.inspect
puts customers.inspect
puts the_order.inspect
puts total
puts indexed_orders.inspect

