# Recoding inject iterator
def inject(array, initial_value)
  array.each do |item|
    initial_value = yield(initial_value, item)
  end
  initial_value
end

puts inject(1..100, 0) { |initial_value, element| element + initial_value } == 5050 # true

# Block timer
def timer_for
  start_time = Time.now
  yield
  taken = Time.now - start_time
  puts "Execution took #{taken} seconds."
end

timer_for do 
  (1..200).each { |i| (1..100000).to_a.shuffle.sort }
end

# Should return around 2-3 seconds