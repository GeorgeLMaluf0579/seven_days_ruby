numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

evens = numbers.select(&:even?)
puts evens.inspect

odds = numbers.select(&:odd?)
puts odds.inspect
