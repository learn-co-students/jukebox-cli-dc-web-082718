require 'pry'

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

  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"

end


def list array

  array.each_with_index { |song, i|
    puts "#{i+1}. #{song}"
  }

end


def play array

  puts "Please enter a song name or number:"
  response = gets.chomp

  if array[response.to_i-1] && response.to_i <= 12 && response.to_i > 0
    puts "Playing #{array[response.to_i-1]}"
  elsif !array.select { |song|
    song == response
  }.empty?
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run array
  songs = array
  help
  response = ""

  until response == "exit" do
    puts "Please enter a command:"
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
