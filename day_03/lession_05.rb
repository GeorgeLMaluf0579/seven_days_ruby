original = "ruby".freeze

copy1 = original.dup
copy2 = original.clone

puts copy1.frozen?
puts copy2.frozen?
