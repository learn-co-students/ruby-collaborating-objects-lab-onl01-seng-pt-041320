require 'pry'

class Artist
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    #binding.pry
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def self.find_or_create_by_name(artist_name)
    if self.all.any? { |artist| artist.name == artist_name}
      self.all.find {|artist| artist.name == artist_name}
    else
      artist_name = self.new(artist_name)
    end
  end
      
  def print_songs
    @songs.each {|song| puts song.name} 
  end
  
end