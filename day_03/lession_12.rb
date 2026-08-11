name = "ruby"
copy = name

def change(value)
  value << " on Rails"
end

change(copy)

puts name
puts copy
puts name.object_id
puts copy.object_id
