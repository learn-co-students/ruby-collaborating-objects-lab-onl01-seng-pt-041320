
require 'pry'
class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end
    
 def self.all
    @@all
 end
 
 def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    end

def self.new_by_filename(filename)
    file = filename.split(" - ")
    song = self.new(file[1])
    artist_name = file[0]
    #binding.pry
    song.artist_name = artist_name
    song
end


end
