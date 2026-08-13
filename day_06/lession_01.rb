def frequencies(array)
  counter = Hash.new(0)
  array.each do |word|
    counter[word] += 1
  end
  counter
end

def count_words(phrase)
  frequencies(phrase.downcase.split)
end

test_array = %w[ruby rails ruby sql ruby rails react vue]
test_phrase = "Ruby is great and ruby is fun"

puts frequencies(test_array).inspect
puts count_words(test_phrase).inspect
