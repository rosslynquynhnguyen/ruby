# your code goes here
def shuffle(array)
  # deep copy
  shuffled_array = Array.new
  array.each do |item|
    shuffled_array.push item
  end
  
  # shuffle
  for i in 0..shuffled_array.length - 1
    random_index = rand(shuffled_array.length)
    # swap
    a = shuffled_array[i]
    shuffled_array[i] = shuffled_array[random_index]
    shuffled_array[random_index] = a  
  end
  
  return shuffled_array
end

def shuffle_sort_by(array)
  array.sort_by{|item| rand(array.length)}
end

# Test
# Shuffle x times, calculate the frequencies of each number in each position of the array
def test_shuffle_distribution(array_of_shuffled_arrays)
  # build up a distribution of each number over different positions
  array_size = array_of_shuffled_arrays[0].length

  # for each value, work out the distribution
  distribution = Array.new
  for i in 1..array_size # each value - sorted array starts with 1
    frequencies = Array.new
    for j in 0..array_size - 1
      frequency = 0
      array_of_shuffled_arrays.each do |shuffled_array|
        frequency += 1 if shuffled_array[j] == i
      end
      frequencies.push frequency
    end
    distribution.push frequencies
  end
  
  return distribution 
end

sorted_array = (1..10).to_a
 
# Testing your shuffle algorithm
#a = shuffle(sorted_array)
#puts 'A shuffle'
#puts a

#b = shuffle(sorted_array)
#puts 'And another shuffle'
#puts b

#puts 'A shuffle, again'
#puts a

p shuffle(sorted_array) != shuffle(sorted_array) # => true
p shuffle_sort_by(sorted_array) != shuffle_sort_by(sorted_array) # => true

# create a sample of 5k shuffles
RUNS = 5000
MAX_VAL = 10
samples = Array.new
for i in 0..RUNS
  samples.push shuffle((1..MAX_VAL).to_a)
end

# test the distribution
puts "Distribution:"
distribution = test_shuffle_distribution(samples)
for i in 1..MAX_VAL
  for j in 0..MAX_VAL - 1
    puts "\tValue = #{i} [#{j}]: #{distribution[i-1][j]}"
  end
end
