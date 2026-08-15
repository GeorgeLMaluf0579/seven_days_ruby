def frequencies(array)
  counter = Hash.new(0)
  array.each do |item|
    key = item.downcase
    counter[key] += 1
  end

  counter
end

tst = %w[the quick brown fox jumps over the lazy dog ruby and rails is awesome]

result = frequencies(tst)
puts result.inspect
