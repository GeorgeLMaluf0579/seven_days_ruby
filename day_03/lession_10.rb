def method_a(value)
  value.upcase!
end

def method_b(value)
  value = value.upcase
end

name = "ruby"

method_a(name)
puts name

name = "ruby"
method_b(name)
puts name
