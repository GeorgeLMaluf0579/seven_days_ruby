def my_select(array)
  result = []
  array.each do |element|
    if yield(element)
      result << element
    end
  end

  result
end

selecteds = my_select([1, 2, 3, 4, 5]) do |number|
  number.even?
end

puts selecteds.inspect
