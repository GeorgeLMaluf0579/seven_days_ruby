sum = ->(a,b) { a + b }

calculator = ->(a, b, operation) { operation.call(a, b) }


puts calculator.call(10, 5, sum)
