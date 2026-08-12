def repeat(number)
  number.times do |index|
    yield index 
  end
end

repeat(5) do |index|
  puts "Executing #{index}"
end
