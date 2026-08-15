def grand_total(array)
  array.select{|item| item.even? }
       .map{|item| item * 2 }
       .reduce(0) { |sum, item| sum + item }
end


numbers = [1,2,3,4,5,6,7,8,9]

result = grand_total(numbers)
puts result.inspect
