# Very dirty code to make some dirty gym...
def hop_hop_hop(number_of_exercises)
  for i in (1..number_of_exercises) do 
    (1..i).each {
      print "hop! "
    }
    print "Encore une fois..\n"
  end
end

hop_hop_hop(10)
