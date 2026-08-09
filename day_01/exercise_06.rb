users = [
  { id: 1, name: "George", age: 35, active: true },
  { id: 2, name: "Maria", age: 28, active: true },
  { id: 3, name: "John", age: 17, active: false },
  { id: 4, name: "Ana", age: 42, active: true },
  { id: 5, name: "Carlos", age: 31, active: false }
]

active_users = users.reject do |user|
  user[:active] == true
end

puts active_users
