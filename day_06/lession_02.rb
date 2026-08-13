def index_by(array)
  result = {}
  array.each do |item|
    key=yield(item)
    result[key] = item
  end
  
  result
end

users = [
  { id: 10, name: "George" },
  { id: 20, name: "John" },
  { id: 30, name: "Mary" },
  { id: 40, name: "Joseph" }
]

indexed = index_by(users) do |user|
  user[:id]
end

puts indexed.inspect
