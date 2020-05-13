require 'pry'
class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) 
    @name = name
    @@all << self
    @songs = []
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
  
  def self.find_or_create_by_name(name)
    self.all.detect {|instance| instance.name == name} ||
        self.new(name)
  end
  
  def print_songs
    @songs.each{ |song_list| puts song_list.name}
  end
  
  
  
  
end