require 'pry'

class Song
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    file_data = filename.chomp('.mp3').split(' - ')
    #binding.pry
    song = self.new(file_data[1])
    #song.name = 
    song.artist_name= file_data[0]
    song
  end
  
  def artist_name=(artist_name)
    #binding.pry
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
  
end
