module Yell 
  def yell_angrily(words)
    puts (words) + "!!!" + " :("
    end 
  def yell_happily(words)
    puts (words) + "!!" + " :)"
    end 
end 

class Kam 
  include Yell
end

class Jon 
  include Yell 
end
  
kam = Kam.new 
kam.yell_angrily("NO")

jon = Jon.new 
jon.yell_happily("YES")
