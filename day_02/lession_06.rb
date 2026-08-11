user = {
  name: "George",
  age: 35
}

metadata = {
  active: true,
  role: "admin"
}

merged = user.merge(metadata)

puts merged

transformed = merged.transform_keys(&:to_s)

puts transformed

upcased = transformed.transform_values do |value|
  value.is_a?(String) ? value.upcate : value
end

puts upcased
