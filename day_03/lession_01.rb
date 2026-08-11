a = "ruby"
b = a
c = "ruby"

puts a.object_id
puts b.object_id
puts c.object_id

puts a.object_id == b.object_id
puts a.object_id == c.object_id
puts c.equal?(a)
puts c == a
puts b.equal?(a)
