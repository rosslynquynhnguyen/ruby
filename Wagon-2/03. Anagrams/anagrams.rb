# anagrams.rb
def anagrams?(a_string, another_string)
  a_string.upcase.chars.select{|char| char != ' '}.sort == another_string.upcase.chars.select{ |char| char != ' '}.sort
end

def anagrams_on_steroids?(a_string, another_string)
  # a hash of char => occurence
  a_hash = a_string.upcase.chars.select{|char| char != ' '}.group_by{|char| char}.map{|key, val| [key, val.length]}.to_h

  another_hash = another_string.upcase.chars.select{|char| char != ' '}.group_by{|char| char}.map{|key, val| [key, val.length]}.to_h

  a_hash == another_hash
end

# complexity = ?
puts anagrams? "Monica Lewinsky", "Nice silky woman" # => true 

# complexity = ?
puts anagrams_on_steroids? "Monica Lewinsky", "Nice silky woman" # => true

puts anagrams?("ABC", "DEF") == false

puts anagrams_on_steroids?("ABC", "DEF") == false