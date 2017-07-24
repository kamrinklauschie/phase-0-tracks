$alphabet = "abcdefghijklmnopqrstuvwxyz"

def encrypt(key)
  for x in 0...key.length 
    current_index = $alphabet.index(key[x])
    new_index = (current_index + 1) % $alphabet.length
    new_character = $alphabet[new_index]
    key[x] = new_character
  end 
  return key 
end

def decrypt(key)
  for x in 0...key.length 
    current_index = $alphabet.index(key[x])
    new_index = (current_index - 1) % $alphabet.length
    new_character = $alphabet[new_index]
    key[x] = new_character
  end
  return key
end

# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
answer = ""
while answer != "encrypt" and answer != "decrypt"
  puts "Would you like to encrypt or decrypt"
  answer = gets.chomp
  if answer != "encrypt" and answer != "decrypt"
    puts "Hey please type encrypt or decrypt"
  end
end

# Asks them for the password
puts "What is the password?"
password = gets.chomp

# Conducts the requested operation, prints the result to the screen, and exits
if answer == "encrypt"
  puts encrypt(password)
elsif answer == "decrypt"
  puts decrypt(password)
end

# This nested method works because the output of encrypt gets passed to the input of decrypt. 