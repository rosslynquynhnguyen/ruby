# group_anagrams.rb
def group_anagrams(words)
  # your code here
  words.map{|word| [word.downcase.chars.sort, word]}
    .group_by{|array, word| array}
    .map{|key, val| [key, val.map{|array, word| word}]}
    .map{|key, val| val}
    .sort
end

# input:
puts group_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']) == [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]].sort

p group_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'])

# output:
# =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]

# HINT: you can quickly tell if two words are anagrams by sorting their
# letters, keeping in mind that upper vs lowercase doesn't matter