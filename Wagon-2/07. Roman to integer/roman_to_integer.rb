# roman_numerals.rb
def roman_to_integer(roman_string)
  roman_letters = { 
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  # array of current values
  vals = roman_string.chars.map{|letter| roman_letters[letter]}
  
  sum = 0
  for i in 0..vals.length - 1
    current_val = vals[i]
    next_val = if i == (vals.length - 1) then 0 else vals[i + 1] end

    if current_val >= next_val 
      sum += current_val
    else
      sum -= current_val
    end
  end

  sum
end

puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true
puts roman_to_integer('VI') == 6
puts roman_to_integer('VIII') == 8
puts roman_to_integer('IX') == 9
puts roman_to_integer('XXI') == 21
puts roman_to_integer('XXV') == 25
puts roman_to_integer('LXXX') == 80
puts roman_to_integer('MCMLXXIX') == 1979
puts roman_to_integer('MCMXCIX') == 1999
puts roman_to_integer('MMMMMV') == 5005
puts roman_to_integer('MMCMXVIII') == 2918
puts roman_to_integer('DCCLXXXV') == 785