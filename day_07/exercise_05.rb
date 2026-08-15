def active_users(users)
  users.select { |user| user[:active] == true }
end

def user_names(users)
  users.map { |user| user[:name] }
end

def find_user(users, id)
  users.select { |user| user[:id] == id }
end

def index_by_id(users)
  result = {}
  users.each do |user|
    key = yield(user)
    result[key] = user
  end

  result
end


def total_age(users)
  users.reduce(0) { |sum, user| sum + user[:age] }
end


users = [
  { id: 10, name: "George", age: 35, active: true },
  { id: 20, name: "John", age: 17, active: false },
  { id: 30, name: "Mary", age: 28, active: true },
  { id: 40, name: "Paul", age: 42, active: false }
]

available_users = active_users(users)
names = user_names(users)
user = find_user(users, 30)
ages = total_age(users)

indexed_users = index_by_id(users) do |user|
  user[:id]
end

puts available_users.inspect

puts names.inspect

puts user.inspect

puts indexed_users.inspect

puts ages
