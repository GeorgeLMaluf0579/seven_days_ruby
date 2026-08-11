orders = [
  {
    id: 1,
    customer: { name: "George" },
    status: "paid",
    total: 100
  },
  {
    id: 2,
    customer: { name: "John" },
    status: "pending",
    total: 200
  },
  {
    id: 3,
    customer: { name: "George" },
    status: "paid",
    total: 150
  },
  {
    id: 4,
    customer: { name: "Mary" },
    status: "cancelled",
    total: 50
  }
]

totals = orders.each_with_object(Hash.new(0)) do |order, hash|
  hash[order[:status]] += order[:total]
end

quantities = orders.each_with_object(Hash.new(0)) do |order,hash|
  hash[order[:status]] += 1
end

public_data = []
orders.map do |order|
  public_data << order.slice(:id, :status, :total)
end

puts totals

puts quantities

puts public_data
