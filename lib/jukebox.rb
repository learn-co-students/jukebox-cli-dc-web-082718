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

def list(song_list)
  index = 0
  while index < song_list.length
    puts "#{(index + 1)}. #{song_list[index]}"
    index += 1
  end
end

def play(song_list)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if song_list.include?(input)
    puts "Playing #{input}"
  else
    index = input.to_i - 1
    if song_list[index] != nil
      puts "Playing #{song_list[index]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  keep_running = true

  help
  while keep_running do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "play"
      play(song_list)
    when "list"
      list(song_list)
    when "exit"
      exit_jukebox
      keep_running = false
    end
  end
end

run(songs)
