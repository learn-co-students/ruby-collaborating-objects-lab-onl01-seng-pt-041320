require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def add_song (song)
        song.artist = self
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def self.find_or_create_by_name (name)
        artist_name = self.all.find {|value| value.name == name}
        if artist_name
            artist_name
        else
            artist_name = self.new(name)
            @@all << artist_name
            artist_name
        end
    end

    def print_songs
    
    end
end

# Sting = Artist.new("Sting")
# puts Artist.all