def bugged_concatenate(array)
  # 2. fix the code: TypeError
  puts array.inject("") { |output, element| output + element.to_s }.upcase
end

# 1. fix the method call: ArgumentError
bugged_concatenate([1, "9", 84, " ", "George Orwell"])

# simple function responding diffently to Integer and String
def multiply(source, times)
  source * times
end

puts "3 x 5 = #{multiply(3,5)}"
puts "Hello world! x 3 = " + multiply("Hello world! ", 3)