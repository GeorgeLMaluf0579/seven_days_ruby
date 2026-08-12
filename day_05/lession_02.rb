sum = ->(a,b) { a + b }
subtract = -> (a,b) { a - b }
multiply = -> (a,b) { a * b }
division = -> (a,b) { a / b }

calculator = -> (a, b, operation) { 
  operation.call(a, b)
}


puts calculator.call(10,5, sum)
puts calculator.call(10,5, subtract)
puts calculator.call(10,5, multiply)
puts calculator.call(10,5, division)
