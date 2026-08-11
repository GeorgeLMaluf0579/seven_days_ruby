users = [
  { id: 1, name: "George" },
  { id: 2, name: "John" },
  { id: 3, name: "Mary" }
]

hash_users = users.each_with_object({}) do |user, hash|
  hash[user[:id]] = user
end


puts hash_users

hash_users2 = users.each_with_object({}) do |user, hash|
  hash[user[:id]] = user.fetch(:name)
end

puts hash_users2
