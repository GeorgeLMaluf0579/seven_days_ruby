def my_map(array, &block)
  result = []

  array.each do |element|
    result << block.call(element)
  end

  result
end

mapped = my_map([1, 2, 3]) do |number|
  number * 10
end

puts mapped.inspect
