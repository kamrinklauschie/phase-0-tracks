str = String.new
str.length
str.empty?
str += "huh."
greeting = String.new("hello")
greeting.length
greeting.upcase

class Puppy
  def make_puppy
  end
end

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

spot.class
duchess == fido
fido.instance_of?(Array)
fido.instance_of?(Puppy)