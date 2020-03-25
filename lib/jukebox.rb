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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do | item, index |
    puts "#{index + 1}. #{item}"
  end
end

def play(songs)
  song_num_array = []
  songs.each_with_index do |item, index|
    song_num_array.push(index.to_s)
  end
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if song_num_array.include? user_response 
    #binding.pry
    choice_num = user_response.to_i - 1
    puts "Playing #{songs[choice_num]}"
  elsif songs.include? user_response
    puts "Playing #{user_response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  user_command = nil
  until user_command == "exit" do
    puts "Please enter a command:"
    user_command = gets.strip
      if user_command == "help"
        help
      elsif user_command == "list"
        list(songs)
      elsif user_command == "play"
        play(songs)
      elsif user_command == "exit"
        exit_jukebox
        break
      end
    end
end

