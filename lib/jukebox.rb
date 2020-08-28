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

# Add your code here
#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.strip

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  (1..songs.length).zip(songs).each do |song|
    puts "#{song[0]}. #{song[1]}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.strip
  if song.match? /\A\d+\z/
    song = song.to_i
  end
  numbered = (1..songs.length).zip(songs)
  numbered.each do |num_song|
    #binding.pry
    if num_song.include?(song)
      p num_song[1]
    else
      puts "Invalid input, please try again"
      play(songs)
    end
  end
end
