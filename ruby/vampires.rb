puts "How many employees will be processed?"
employees = gets.chomp.to_i

employees.times do |x|
  puts "What is your name?"
  username = gets.chomp 
  
  puts "How old are you?"
  age = gets.chomp.to_i
  
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  
  actual_age = Time.now.year - birth_year
  correct_age = actual_age == age
  
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  garlic = gets.chomp
  
  puts "Would you like to enroll in the company’s health insurance?"
  health = gets.chomp 
  
  my_allergy = nil
  until my_allergy == "done"
    puts "Name any allergies, one at a time please."
    my_allergy = gets.chomp
    if my_allergy == "sunshine"
      puts "Probably a vampire."
    end
  end
    
  
  # If the employee got their age right, and is willing to 
  # eat garlic bread or sign up for insurance, the result is
  # “Probably not a vampire.”
  
  if correct_age && garlic || health
    puts "Probably not a vampire."
  end
  
  # If the employee got their age wrong, and hates garlic 
  # bread or waives insurance, the result is “Probably a
  # vampire.”
  
  if !correct_age && !garlic || !health
    puts "Probably a vampire."
  end
  
  # If the employee got their age wrong, hates garlic bread,
  # and doesn’t want insurance, the result is “Almost
  # certainly a vampire.”
  
  if correct_age && !garlic && !health
    puts "Almost certainly a vampire."
  end
  
  # Even if the employee is an amazing liar otherwise,
  # anyone going by the name of “Drake Cula” or “Tu Fang” is
  # clearly a vampire, because come on. In that case, you
  # should print “Definitely a vampire.”
  
  if name = "Drake Cula" || name = "Tu Fang"
    puts "Definitely a vampire."

  # Otherwise, print “Results inconclusive.”
  
  else 
    puts "Results inconclusive."
    
  end 

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."