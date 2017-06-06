# your code to sort the array and output students
def wagon_sort(students_array)
  # students_array.sort_by { |name| name.downcase }
  students_array.sort_by(&:downcase)
end

students = []

puts 'Type a student:'
students.push gets.chomp

# your code to interact with the user..
begin
  puts 'Type another student (or press enter to finish):'
  input = gets.chomp
  students.push(input) unless input == ''
end until input == ''

puts "Congratulations ! Your Wagon has #{students.length} students:"
wagon_sort(students).each do |s|
  puts s
end
