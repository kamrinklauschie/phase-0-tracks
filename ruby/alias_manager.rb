$vowels = "aeiou"
$vowels_upper = "AEIOU"
$consonants = "bcdfghjklmnpqrstvwxyz"
$consonants_upper = "BCDFGHJKLMNPQRSTVWXYZ"

# Changing all of the vowels to the next vowel in 'aeiou'
first_name_last_name = "the word"

def encrypt_word(first_name_last_name)
  last_name_first_name = swap_names(first_name_last_name)
  return increment_letters(last_name_first_name)
end

def swap_names(first_name_last_name)
  # define the method swap_names here
  # assumes first and last name is only two words 
  split_names = first_name_last_name.split(" ")
  first_name = split_names[0]
  last_name = split_names[1]
  return "#{last_name} #{first_name}"
end 

def increment_letters(last_name_first_name)
  # define increment_letters here
  puts last_name_first_name.length
  for index in 0...last_name_first_name.length
    puts index
    letter = last_name_first_name[index]
    if ($vowels.include?(letter))
      alphabet = $vowels
    elsif ($consonants.include?(letter))
      alphabet = $consonants
    elsif ($vowels_upper.include?(letter))
      alphabet = $vowels_upper
    elsif ($consonants_upper.include?(letter))
      alphabet = $consonants_upper
    else
      next
    end
    next_letter = increment_letter(letter, alphabet)
    last_name_first_name[index] = next_letter
  end
  return last_name_first_name
end

def increment_letter(letter, letters)
    puts "letter: #{letter}"
    puts "letters: #{letters}"
    letters_index = letters.index(letter)
    new_letter_index = (letters_index + 1) % letters.length
    return letters[new_letter_index]
end 

# Provide a user interface that lets a user enter a name and get a fake name back.
puts "What is the first name and last name?"
first_name_last_name = gets.chomp
if first_name_last_name == "quit"
end

encrypt_word(first_name_last_name)

# "Felicia Torres" - "Vussit Gimodoe"