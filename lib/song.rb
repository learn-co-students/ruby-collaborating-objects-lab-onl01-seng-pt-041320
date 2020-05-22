require "pry"
class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize (name)
        @name = name
        self.save
    end
    def self.all
        @@all
    end
    def save
        @@all << self
    end

    def artist_name=(name)
       artist = Artist.find_or_create_by_name(name)
       self.artist = artist 
       artist.add_song(self)
    end

    def self.new_by_filename (filename)
        array = filename.split(" - ")
        new_song = self.new(array[1])
        new_song.artist_name = array[0]
        new_song
    end
 end
 
