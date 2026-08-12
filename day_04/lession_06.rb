users = [
  { name: "George", age: 35 },
  { name: "Maria", age: 17 },
  { name: "João", age: 28 },
  { name: "Ana", age: 15 }
]

users.each do |user|
  puts user[:name]
end

greaters = users.select{|user| user[:age] >= 18.0}
puts greaters.inspect

names = users.map do |user|
  user[:name]
end

puts names.inspect
