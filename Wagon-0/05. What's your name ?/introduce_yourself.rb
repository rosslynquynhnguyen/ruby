# your code goes here, introduce yourself !
print "Enter your first name: "
first_name = gets.chomp
print "Enter your middle name: "
middle_name = gets.chomp
print "Enter your last name: "
last_name = gets.chomp

full_name = first_name + ' ' + middle_name + ' ' + last_name

puts "#Hello, #{full_name} !"
puts "Your name has got #{full_name.length} characters, including spaces."

if first_name.casecmp("quynh") == 0 && middle_name.casecmp("huu") == 0 && last_name.casecmp("nguyen") == 0
    puts "You are a good person!"
end 