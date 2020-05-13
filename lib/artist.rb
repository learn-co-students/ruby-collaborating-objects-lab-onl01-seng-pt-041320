 require 'pry'
 class Artist
   @@all = []
   attr_accessor :name, :songs    
   
   
   def initialize(name)
     @name = name
     @@all << self
   end 
   
   def self.all 
     @@all
   end 
   
   
   def songs
     Song.all.select{|value| value.artist == self}
   end 
   
   def add_song(song)
     
     song.artist = self unless song.artist == self 
   end 
   
   def save
     @@all << self
     self
   end 
   
   def self.find_or_create_by_name(name) 
       self.find_by_name(name) || self.new(name)

   end
   
   def self.find_by_name(name)
      artist_name = @@all.detect{ |artist| artist.name == name}
   end 
   
   
   
   def print_songs
     songs.each{ |tune| puts tune.name}
   end 
   
   
     
     

  
     

 
 
 end