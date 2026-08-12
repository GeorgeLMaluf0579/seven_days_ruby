even = ->(number) { number.even? }
greater_than_five = ->(number) { number > 5 }
multiple_of_tree = ->(number) { (number % 3).zero? }

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

evens = numbers.select{ |n| even.call(n) }
greaters = numbers.select{ |n| greater_than_five.call(n) }
multiples = numbers.select{ |n| multiple_of_tree.call(n) }

puts evens.inspect
puts greaters.inspect
puts multiples.inspect
