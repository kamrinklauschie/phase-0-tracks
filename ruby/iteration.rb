fruit = [
  'apple',
  'orange',
  'pear',
  'kiwi',
  'starfruit'
  ]

animal_cracker = {
  'bunny' => 'intact',
  'camel' => 'intact',
  'elephant' => 'intact',
  'giraffe' => 'intact', 
  'rhino' => 'intact',
  'gorilla' => 'intact',
  'Bambi' => 'intact'
  }
  
  
puts "Check out the status of your animal cracker!"

#iterate through hash
animal_cracker.each do |animal, status|
	puts "The #{animal} has a status of #{status}"
end


iterate through array
puts "Original data: #{fruit}"

fruit.each do |fruit|
puts "#{fruit}".upcase
end

fruit_bowl = fruit.map do |fruit|
end


fruit.each do |x|
next if fruit.length < 5
fruit.delete x
end

fruit.each do |x|
next if fruit.length == 4
fruit.delete x
end

p animal_cracker.select{|item|"Bambi" == item}
p animal_cracker.reject{|item|"Bambi" == item}
p animal_cracker.drop_while{|item|"Bambi" == item}