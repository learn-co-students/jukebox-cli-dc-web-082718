require "pry"

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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list (songs)
  songsWithIndex = []

  songs.each_with_index do |song, index|
    line = "#{index+1} #{song}"
    puts line
    songsWithIndex << line
  end
  songsWithIndex
end


def play (songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp

  if song_choice.is_a?(Integer) == true && list(songs).include?(song_choice) == true
    index = song_choice-1
    puts "PLaying <#{songs[index]}"
  elsif song_choice.is_a?(String) == true && list(songs).include?(song_choice) == true
    puts "PLaying <#{songs[index]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  user_entry = gets.chomp

  command = user_entry
  if command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "help"
    help
  elsif command == "exit"
    exit_jukebox
  end
end
