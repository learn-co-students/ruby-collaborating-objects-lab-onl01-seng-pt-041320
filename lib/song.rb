require 'pry'
class Song 
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end 
  
  def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
  end
  
  def self.new_by_filename(file)
    filename = file.split(" - ")
    artistname = filename[0]
    songname = filename[1]
    song = self.new(songname)
    

    song = self.new(songname)
    song.artist_name = artist_name
    song
  end 
  
  
  
end