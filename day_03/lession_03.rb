a = "ruby"
b = a.dup

b.upcase!
puts a
puts b

puts a.object_id
puts b.object_id

puts a.frozen?
puts b.frozen?
