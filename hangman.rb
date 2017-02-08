###############################################################################
### Very basic hangman game inspired by TechHire interview with Mined Minds ###
###############################################################################
######################## Rewritten in Ruby (2017-02-07) #######################
#############################  by John C. Verbosky ############################
###############################################################################
# Features:                                                                   #
# - animations for winning and losing                                         #
# - ability to start a new game or exit after win/loss                        #
# - cumulative score                                                          #
# - Windows x64-compatible version                                            #
###############################################################################
# 1-to-1 conversion - will refactor using TDD next, particularly method calls #
###############################################################################

# Required for get_key()
require "io/wait"

# array of mystery words
$words = ["research", "persistence", "dedication", "curiosity", "troubleshoot", "energetic", "organization",
          "communication", "development", "loyalty", "adaptable", "creativity", "improvement", "dependable",
          "teamwork", "collaboration", "optimistic", "focused", "meticulous", "effective", "inspired"]

$word = $words.sample  # select a random word from the words array
$bucket = []  # array to hold all letters that have been entered to guess
$build_word = []  # array to hold guessed letters that are found in mystery word
$wrong_count = []  # array to hold guessed letters that are not found in mystery word
$games_won = 0  # counter for games won
$games_lost = 0  # counter for games lost

# Method to clear the screen regardless of OS
def clear_screen()
  if RUBY_PLATFORM =~ /cygwin|mswin|mingw|bccwin|wince|emx/  # see if system is Win
    system("cls")  # so use the "cls" command to clear the screen
  else  # otherwise system is Mac/Linux
    system("clear")  # use the "clear" command to clear the screen
  end
end

# Method to make tweaking margins easier
def margin(number)
  number.times { puts "\n" }  # output a blank line "number" of times
end

# Method to display the cumulative score of games won and lost
def score()
  margin(1)
  puts "  Score"
  puts "  -----"
  puts "  Won: #{$games_won}    Lost: #{$games_lost}"
end

# Method to display guessed letters
def letters()
  puts "  Word:     " + $build_word.join(" ")  # display the correctly guessed letters and placeholders
  margin(1)
  puts "  Letters:  " + $bucket.join(" ")  # display all of the guessed letters
  margin(2)
end

# Method to start the game
def start_game(word)
  clear_screen()  # Clear the screen
  $word.length.times { $build_word.push("_") }  # Populate the build_word list with an underscore for each letter in the mystery word
  user_input()  #Run user_input() to display the main "UI"
end

# Method that acts as primary starting/return point for other methods
def user_input()
  score()  # display the cumulative score
  hangman($wrong_count.length)  # display the current progressive hangman "image" based on wrong guesses
  letters()  # display the correctly guessed letters and placeholders
  print "  Please enter a letter: "  # prompt the user for a letter
  letter = gets.chomp  # assign the letter to a variable
  good_letter(letter)  # pass the user-specified letter to good_letter()
end

# Method that checks the user-specified letter for a few things
def good_letter(letter)
  clear_screen()  # Clear the screen
  if $bucket.include? letter  # check to see if letter has already been guessed and reprompt if so
    puts "  You already guessed that one - TRY AGAIN!"
    user_input()
  elsif letter[/[a-zA-Z]+/] and letter.length == 1  # check is a single -letter- has been entered
    $bucket.push(letter)  # if so, add it to the bucket list
    letter_test(letter)  # then pass it to letter_test()
  else  # if multiple letters, non-alpha characters or nothing has been entered
    puts "  Enter a single letter - TRY AGAIN!"  # reprompt user to try again
    user_input()
  end
end

# Method that checks to see if letter is in the mystery word
def letter_test(letter)
  if $word.include? letter  # If it is in the word, pass it to find_locations()
    find_locations(letter)
  else  # If it is not in the word, pass it to wrong_letter()
    wrong_letter(letter)
  end
end

# Method that finds all locations of a letter in the word
def find_locations(letter)
  locations = []  # array for the index (position) of all instances of the letter in the word
  last_index = 0  # dual-purpose variable that holds the index (position) of the letter and the .index offset
  occurrences = $word.count letter  # variable used to control do loop iteration count
  occurrences.times do  # for every occurrence of the letter in the word
    last_index = $word.index(letter, last_index)  # determine the position of the letter in the word
    locations.push(last_index)  # push the position of the letter to the location array
    last_index += 1  # increment last_index by 1 to target the next occurrence of the letter (via .index offset)
  end
  add_letter(letter, locations)  # pass the user-specified letter and array of locations to add_letter()
end

# Method to populate $build_word with every occurrence of a letter
def add_letter(letter, locations)
  locations.each do |location|  # for each occurrence of a letter
    $build_word[location] = letter  # add the letter to the correct location in $build-word
  end
  word_test()  # then run word_test()
end

# Method to compare the current build_word array against the mystery word
def word_test()
  if $build_word.join == $word  # if $build_word equals $word, the user won
    $games_won += 1  # so increase the games_won score by 1
    winner(1)  # and start winner() on frame 1 (animation count 1)
  else  # if they don't match, run user_input() for another letter
    user_input()
  end
end

# Method that receives non-mystery word letter and adds it to the wrong_count array
def wrong_letter(letter)
  if $wrong_count.length < 9  # if the wrong_count list has less than 9 letters
    $wrong_count.push(letter)  # then add the letter to the list
    user_input()  # run user_input() again
  else  # if this is the tenth wrong letter, it's game over
    $games_lost += 1  # so increase the games_lost score by 1
    loser(5)  # and start loser() on frame 1 (animation count 5)
  end
end

# Method to progressively draw the hangman stages as incorrect letters are guessed
def hangman(count)
  if count == 0
    margin(12)
  elsif count == 1
    margin(8)
    puts "   _________"
    margin(3)
  elsif count == 2
    margin(2)
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 3
    margin(1)
    puts "        ______"
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 4
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    4.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 5
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    3.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 6
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |      |"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 7
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 8
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  else
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     /"
    puts "       |"
    puts "   ____|____"
    margin(3)
  end
end

# Method to get the current keypress
def get_key()
  begin
    system("stty raw -echo") # turn raw input on
    c = nil
    if $stdin.ready?
      c = $stdin.getc
    end
    c.chr if c
  ensure
    system "stty -raw echo" # turn raw input off
  end
end

# Method to handle endgame items (animations, start a new game, exit game) - runs after each animation frame
def game_over(ani_count)
  key = get_key()  # variable for last key pressed
  clear_screen()  # Clear the screen
  if key != nil  # check to see if a key was pressed during winner/loser animation
    if key == "\n"  # if the user presses the Enter key
      $word = $words.sample  # select a new random word
      $bucket = []  # clear all global arrays
      $build_word = []
      $wrong_count = []
      start_game($word)  #  and start a new game
    elsif key != "\n"  # if the user presses any key other than Enter
      puts "Exiting game..."  # and exit the game
      margin(1)
    end
  elsif ani_count < 5  # if no keypress and animation count < 5
    winner(ani_count)  # run winner() with the current animation count
  else  # if no keypress and animation count >= 5
    loser(ani_count)  # run loser() with the current animation count
  end
end

# Method to print repetitive congratulations text in winner() animation
def congratulations()
  margin(2)
  puts "       ---CONGRATULATIONS---"
  margin(1)
  puts "        YOU WON THE GAME!!!"
  margin(2)
end

# Method to display winner() animation
def winner(ani_count)
  if ani_count == 1  # winner animation frame 1
    score()
    congratulations()
    puts "   \\O/    \\O_  \\O/  _O/    \\O/ "
    puts "    |    _/     |     \\_    |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " - Press Enter to play again or a letter + Enter to quit -"
    sleep(0.5)  # wait 1/2 second for smooth animation
    game_over(2)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 2  # winner animation frame 2
    score()
    congratulations()
    puts "    \\O_  \\O/  _O/    \\O/    \\O_ "
    puts "   _/     |     \\_    |    _/   "
    puts "    |    / \\    |    / \\    |   "
    margin(2)
    letters()
    puts " \\ Press Enter to play again or a letter + Enter to quit \\"
    sleep(0.5)
    game_over(3)
  elsif ani_count == 3  # winner animation frame 3
    score()
    congratulations()
    puts "   \\O/  _O/    \\O/    \\O_  \\O/ "
    puts "    |     \\_    |    _/     |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " | Press Enter to play again or a letter + Enter to quit |"
    sleep(0.5)
    game_over(4)
  else  # winner animation frame 4
    score()
    congratulations()
    puts "  _O/    \\O/    \\O_  \\O/  _O/  "
    puts "    \\_    |    _/     |     \\_ "
    puts "    |    / \\    |    / \\    |  "
    margin(2)
    letters()
    puts " / Press Enter to play again or a letter + Enter to quit /"
    sleep(0.5)
    game_over(1)
  end
end

# Method to print repetitive game over text in loser() animation
def sorry()
  margin(1)
  puts "  SORRY - GAME OVER!"
  margin(1)
end

# Method to display loser() animation
def loser(ani_count)
  if ani_count == 5  #loser animation frame 1
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " - Press Enter to play again or a letter + Enter to quit -"
    sleep(0.5)
    game_over(6)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 6  #loser animation frame 2
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " \\ Press Enter to play again or a letter + Enter to quit \\"
    sleep(0.5)
    game_over(7)
  elsif ani_count == 7  #loser animation frame 3
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     \\O/"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " | Press Enter to play again or a letter + Enter to quit |"
    sleep(0.5)
    game_over(8)
  else  # loser animation frame 4
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " / Press Enter to play again or a letter + Enter to quit /"
    sleep(0.5)
    game_over(5)
  end
end

start_game($word)