puts 'What is the hamsters name?'
name = gets.chomp
puts 'What is the hamsters volume level?'
hamster_volume = gets.chomp.to_i
puts 'What is the hamsters fur color?'
fur_color = gets.chomp
puts 'Is the hamster a good candidate for adoption? Yes or No?'
good_candidate = gets.chomp
 if good_candidate = 'Yes' || 'yes'
 	good_candidate = 'is indeed'
 elsif good_candidate = 'No' || 'no'
 	good_candidate = 'is not'
 end
puts 'What is the hamsters estimated age?'
estimated_age = gets.chomp.to_i
 if estimated_age == '' || 0
 	estimated_age = "an unknown number of"
end 

puts "Alright then, So we got #{name}, the #{fur_color} hamster. Clocking in at a volume level of #{hamster_volume} and is #{estimated_age} years old. This hamster #{good_candidate} a good candidate for adoption."