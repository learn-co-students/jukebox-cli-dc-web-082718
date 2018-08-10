#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
/home/carowink91/jukebox-cli-dc-web-082718/Desktop/Dev/jukebox-cli/audio/Emerald-Park/01.mp3 => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
/home/carowink91/jukebox-cli-dc-web-082718/Desktop/Dev/jukebox-cli/audio/Emerald-Park/02.mp3 => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
/home/carowink91/jukebox-cli-dc-web-082718/Desktop/Dev/jukebox-cli/audio/Emerald-Park/03.mp3 =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
/home/carowink91/jukebox-cli-dc-web-082718/Desktop/Dev/jukebox-cli/audio/Emerald-Park/04.mp3 => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
/home/carowink91/jukebox-cli-dc-web-082718/Desktop/Dev/jukebox-cli/audio/Emerald-Park/05.mp3 => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
/home/carowink91/jukebox-cli-dc-web-082718/Desktop/Dev/jukebox-cli/audio/Emerald-Park/06.mp3 => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
/home/carowink91/jukebox-cli-dc-web-082718/Desktop/Dev/jukebox-cli/audio/Emerald-Park/07.mp3 => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  if song_choice.is_a?(String) == true && list(my_songs).include?(song_choice) == true
    puts "PLaying <#{my_songs[song_choice]}"
    system 'open <my_songs[:song_choice]>'
  else
    puts "Invalid input, please try again"
  end
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  user_entry = gets.chomp

  command = user_entry
  if command == "list"
    list(my_songs)
  elsif command == "play"
    play(my_songs)
  elsif command == "help"
    help
  elsif command == "exit"
    exit_jukebox
  end
end
