def benchmark
  start = Time.now
  yield
  finish = Time.now
  finish - start
end


elapsed = benchmark do
  sleep 2
end

puts elapsed
