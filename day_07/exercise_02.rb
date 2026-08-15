def index_by(array)
  result = {}
  array.each do |item|
    key = yield(item)
    result[key] = item
  end

  result
end

users = [
  { id: 1, name: "George" },
  { id: 2, name: "John" },
  { id: 3, name: "Mary" }
]


indexed = index_by(users) do |user|
  key = user[:id]
end
  
puts indexed.inspect
