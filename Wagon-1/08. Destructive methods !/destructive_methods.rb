# Find an example which illustrates the difference between chosen_method and chosen_method!
# Copy / Paste this example here !
a = (1..30).to_a

nine_times = a.select{ |foo| foo % 9 == 0 }

puts nine_times == [9, 18, 27]
puts a == (1..30).to_a

eight_times = a.select!{ |foo| foo % 8 == 0 }

puts eight_times == [8, 16, 24]
puts a == [8, 16, 24]