# The objective is to create a function that computes
# the sum of the integers from a min value to a max value
def sum_using_for(min, max)
  # your code here
  total = 0
  for i in min..max
    total += i
  end
  total
end

def sum_using_each(min, max)
  total = 0
  (min..max).each do |i|
    total += i
  end
  total
end

def sum_recursive(min, max)
  if max == min
    max
  else
    max + sum_recursive(min, max - 1)
  end
end

# Testing your code
min = 1
max = 100
sum = 5050
puts sum_using_for(min, max) == sum
puts sum_using_each(min, max) == sum
puts sum_recursive(min, max) == sum
