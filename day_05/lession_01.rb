sum = ->(a,b) { a + b }

def calculator(a, b, operation)
  operation.call(a, b)
end


puts calculator(10,5, sum)
