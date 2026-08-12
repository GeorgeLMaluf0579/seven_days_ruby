def with_log(message)
  puts "[LOG] Start: #{message}"
  yield
  puts "[LOG] End: #{message}"
end

with_log("Processing user") do
  puts "Operation in progress..."
end
