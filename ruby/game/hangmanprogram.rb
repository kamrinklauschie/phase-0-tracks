# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.

class HangmanGame
  attr_accessor :guess_count, :is_over, :previous_guesses, :player_won
  attr_reader :goal_word, :max_guesses
  
  def initialize(goal_word)
    @goal_word = goal_word 
    @max_guesses = goal_word.length * 2 
    @previous_guesses = []
    @guess_count = 0
    @is_over = false 
    @player_won = false 
    show_progress()
  end 
  
# The guessing player receives continual feedback on the current state of the word. 

  def make_guess(guess)
    @previous_guesses << guess 
    display_string = show_progress()
    if !goal_word.include?(guess) 
      guess_counter()
    end 
    if display_string == @goal_word
      @player_won = true 
    end
  end 
    
  def show_progress() 
    display_string = ""
    @goal_word.chars.each do |char|
      if @previous_guesses.include?(char)
        display_string << char 
      else 
        display_string << "_"
      end 
    end
    puts display_string
    return display_string
  end
  
  def guess_counter()
    @guess_count += 1
    if @guess_count == @max_guesses
      @is_over = true 
    end
  end
end

# Guesses are limited, and the number of guesses available is related to the length of the word.

puts "Welcome to the Hangman game!"

puts "Input your secret word!"
goal_word = gets.chomp 

game = HangmanGame.new(goal_word)

while !game.is_over
  puts "Take a guess!"
  guess = gets.chomp
  while guess.length > 1 
    puts "Please enter one letter!"
    guess = gets.chomp
  end 

  game.make_guess(guess)

# The user should get a congratulatory message if they win, and a taunting message if they lose.
  
  if game.player_won 
    puts "Dope job! You win! The word was #{game.goal_word}. You guessed in #{game.guess_count} guesses!"
  elsif game.is_over 
    puts "Sucks to be you! You lost. You lost after #{game.guess_count} guesses!"
  end 

end
