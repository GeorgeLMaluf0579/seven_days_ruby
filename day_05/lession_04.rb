even = ->(number) { number.even? }
greater_than_five = ->(number) { number > 5 }
multiple_of_tree = ->(number) { (number % 3).zero? }
filter = ->(array, condition) {
  array.select{ |element| condition.call(element) }
}

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

evens =  filter.call(numbers, even)
greaters = filter.call(numbers, greater_than_five)
multiples = filter.call(numbers, multiple_of_tree)

puts evens.inspect
puts greaters.inspect
puts multiples.inspect
