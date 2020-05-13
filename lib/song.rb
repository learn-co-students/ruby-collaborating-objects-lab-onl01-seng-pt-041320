require 'pry'
class Song
  attr_accessor :genre, :name, :artist
  #attr_reader :artist
  @@all = []
  @song 
  def initialize(name)
  @name = name
  #@artist = artist 
  @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self
    self
  end 
  
  #def artist= (artist)
    #@artist = artist
    #artist.add_song(self) unless artist.songs.include?(self)
  #end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
  def self.new_by_filename(filename)
    array = filename.chomp(".mp3").split(" - ")
    song = self.new(array[1])
    song.artist_name = array[0]
    song 
    
  end 
    
  
  
end