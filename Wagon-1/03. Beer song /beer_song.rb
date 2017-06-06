# your code goes here
def beersong(nb_at_start)
  if nb_at_start == 1
    puts '1 bottle of beer on the wall, 1 bottle of beer!'
    puts 'Take one down, pass it around, no more bottles of beer on the wall!'
  elsif nb_at_start > 1
    puts "#{nb_at_start} bottles of beer on the wall, #{nb_at_start} bottles of beer!"
    puts "Take one down, pass it around, #{nb_at_start - 1} #{nb_at_start -1 > 1?'bottles':'bottle'} of beer on the wall!"
    beersong(nb_at_start - 1)
  end
end

beersong(ARGV[0].to_i)

# output (if called with 5 beers) :

# => 5 bottles of beer on the wall, 5 bottles of beer!
# => Take one down, pass it around, 4 bottles of beer on the wall!
# => 4 bottles of beer on the wall, 4 bottles of beer!
# => Take one down, pass it around, 3 bottles of beer on the wall!
# => 3 bottles of beer on the wall, 3 bottles of beer!
# => Take one down, pass it around, 2 bottles of beer on the wall!
# => 2 bottles of beer on the wall, 2 bottles of beer!
# => Take one down, pass it around, 1 bottle of beer on the wall!
# => 1 bottle of beer on the wall, 1 bottle of beer!
# => Take one down, pass it around, no more bottles of beer on the wall!