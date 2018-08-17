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

def list(songs)
  songs.each_with_index do |element, index|
    puts "#{index + 1}. #{element}" 
  end 
end 

def play(songs)
  fin_array_num = []
  puts "Please enter a song name or number:"
  user_choice = gets.chomp
  
  array_num = (1..songs.length).to_a
  array_num.each do |num|
    fin_array_num.push(num.to_s)
  end
  
  if fin_array_num.include?(user_choice) 
    puts "Playing #{songs[user_choice.to_i - 1]}"
  elsif songs.include?(user_choice)
    puts "Playing #{user_choice}"
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
  user_response = gets.chomp 
  
  until user_response == "exit"
    case user_response
      when "list"
        list(songs)
      when "help"
        help 
      when "play"
        play(songs)
    end
    puts "Please enter a command:"
    user_response = gets.chomp 
  end
  
  exit_jukebox
end 