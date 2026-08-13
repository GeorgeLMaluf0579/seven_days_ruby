def frequencies(array)
  counter = Hash.new(0)
  array.each do |item|
    key = block_given? ? yield(item) : item
    counter[key] += 1
  end

  counter
end


test_array = %w[Ruby rails Ruby sql rubY Rails react vue]

result = frequencies(test_array) do |word|
  word.downcase
end

puts result.inspect

test_array = %w[Ruby rails Ruby sql rubY Rails react vue]
result = frequencies(test_array)

puts result.inspect

