user = {
  name: "George",
  role: "developer"
}

other = user

other[:role] = "senior developer"

puts user

another = user.dup
another[:role] = "mid developer"

puts user
puts another
