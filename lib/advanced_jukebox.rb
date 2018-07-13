#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'
def songs
  my_songs = {
  "Go Go GO" => '~/Development/learning/jukebox-cli-dc-web-082718/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '~/Development/learning/jukebox-cli-dc-web-082718/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '~/Development/learning/jukebox-cli-dc-web-082718/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '~/Development/learning/jukebox-cli-dc-web-082718/audio/Emerald-Park/04.mp3',
  "Wolf" => '~/Development/learning/jukebox-cli-dc-web-082718/audio/Emerald-Park/05.mp3',
  "Blue" => '~/Development/learning/jukebox-cli-dc-web-082718/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '~/Development/learning/jukebox-cli-dc-web-082718/audio/Emerald-Park/07.mp3'
  }
end

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  puts "\n#{my_songs.keys.join("\n")} \n"
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow users to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "\nPlease enter a song name or number:"
  response = gets.chomp

  if !my_songs.select { |song|
    song == response
  }.empty?
    
    system "open " + my_songs[response]
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again."
  end

end

def exit_jukebox
  #this method is the same as in jukebox.rb
end

def run (my_songs)
  songs = my_songs
  help
  response = ""

  until response == "exit" do
    puts "\nPlease enter a command:"
    response = gets.chomp

    case response
    when "exit"
      exit_jukebox
    when "play"
      play (songs)
    when "list"
      list (songs)
    when "help"
      help
    end

  end
end
