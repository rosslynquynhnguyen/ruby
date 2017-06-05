def stupid_coaching 
  going_to_work = false
  answer_to_question = "Silly question, get dressed and go to work !"
  answer_to_statement = "I don't care son, get dressed and go to work !"

  # your code goes here
  begin
    print "\nCommand: "
    input = gets.chomp
    
    break if input == "I am going to work right now SIR !"

    if input == "I am going to work"
      going_to_work = true
      answer_to_question = "Silly question, take the subway and go to work !"
      answer_to_statement = "I don't care son, take the subway and go to work !"
      
      puts "Good boy! Take the subway, it will be faster."
      next
    end

    # shouting
    shouting = input.upcase == input ? "I can feel your motivation son ! " : ""

    last_char = input[input.length - 1]
    
    if last_char == "?"
      puts shouting + answer_to_question
    elsif
      puts shouting + answer_to_statement
    end

  end while true 
end

# Calling the method
stupid_coaching