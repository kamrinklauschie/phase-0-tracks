class Puppy
  
  def initialize
    puts "Initializing new puppy instance..." 
  end 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(x)
    x.times do
      puts "Woof!"
    end
  end 
  
  def roll_over 
    puts "*rolls over*"
  end 
  
  def dog_years(x)
    x * 7 
  end 
  
  def play_dead 
    puts "*plays dead*"
  end 

end 

fido = Puppy.new 
fido.fetch("favorite toy")
fido.speak(3)
fido.roll_over
fido.dog_years(3)
fido.play_dead 


class Kitten 
  
  attr_reader :kittens 
  
  def initialize 
    puts "Initializing Kitten class..."
  end 
  
  def beg(x)
    x.times do 
      puts "Meow!"
    end 
  end
    
  def catch_mouse
    puts "I killed a mouse for you!"
  end 
  
end

kittens = []

50.times do 
  kittens << Kitten.new
  end

kittens.each do |kitten|
  kitten.beg(3)
  kitten.catch_mouse 
end 