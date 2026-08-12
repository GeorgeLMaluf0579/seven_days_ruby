def active_adult_users(array)
  array.select {|element| element[:active] && element[:age] >= 18}
       .map{|element| element[:name] }
end

users = [
  { name: "George", age: 35, active: true },
  { name: "Maria", age: 17, active: true },
  { name: "João", age: 28, active: false },
  { name: "Ana", age: 25, active: true }
]

puts active_adult_users(users).inspect
