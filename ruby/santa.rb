class Santas
  attr_accessor :age
  attr_accessor :gender, :ethnicity, :reindeer_ranking
  
# An initialize method that prints "Initializing Santa instance ..."
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = rand(0..140)
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

#A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
  def speak()
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
#An eat_milk_and_cookies method that takes a cookie type
  def eat_milk_and_cookies(cookie_flavor)
    #Prints "That was a good <type of cookie here>!"
  puts "That was a good #{cookie_flavor} cookie!"
  end
  
  def celebrate_birthday 
    @age = @age + 1 
  end 
  
# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. 
  
  def get_mad_at=(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end
  
end 

#an empty array to build Santas with 
santas = []

#an array of genders to build Santas with 
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

#an array of ethnicities to build Santas with 
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A"]

10.times do 
  santas << Santas.new(gender.sample, ethnicity.sample)
end

santas.each do |thing|
  p "This is a #{thing.age} years old, #{thing.gender}, #{thing.ethnicity} Santa."
end 