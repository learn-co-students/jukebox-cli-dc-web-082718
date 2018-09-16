require "pry-byebug"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
####################################################
# The help Method
# I accept the following commands:
# - help : displays this help message
# - list : displays a list of songs you can play
# - play : lets you choose a song to play
# - exit : exits this program

def help
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end
####################################################
#The list method

# This method takes in an argument of the songs array and puts out the following:

# 1. Phoenix - 1901
# 2. Tokyo Police Club - Wait Up
# 3. Sufjan Stevens - Too Much
# 4. The Naked and the Famous - Young Blood
# 5. (Far From) Home - Tiga
# 6. The Cults - Abducted
# 7. Phoenix - Consolation Prizes
# 8. Harry Chapin - Cats in the Cradle
# 9. Amos Lee - Keep It Loose, Keep It Tight

  #iterating through the songs array. Use index numbers as reference for song list #'s.  Remember index #'s start at 0


  songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end
####################################################
#The play method

# This method also takes in an argument of the songs array. It first puts out the prompt: "Please enter a song name or number:". It then stores the user's response using gets.chomp.
#
# If the user's response is a valid song number or song name, the method should puts out: "Playing <song name>". Otherwise, it should puts out: "Invalid input, please try again".

def play(songs)
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
