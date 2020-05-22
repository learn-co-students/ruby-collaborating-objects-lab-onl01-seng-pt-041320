require 'pry'
class Artist
    attr_accessor :name
    @@all = []
    def initialize(name) #initializing with a name and saving the artist in @@all array.
        @name = name
        @@all << self
    end
    def self.all #defining this as the reader for class variable @@all.
        @@all
    end
    def add_song (song) 
        song.artist = self
    end
    def songs
        Song.all.select {|song| song.artist == self}
    end
    def self.find_or_create_by_name (name)
        artist_name = self.all.find {|value| value.name == name} # search @@all for name passed and assign it to variable artist_name
        if artist_name # if artist name is found/exists then just return it
            artist_name
        else # if it doesn't exist create a new artist instance with that name and then return it. 
            artist_name = self.new(name)
            artist_name
        end
    end
    def print_songs # prints all songs that belong to this artist. Stupid way of doing it, could've been done by pust printing everything from "songs" method. 
        Song.all.each do |song|
            if song.artist == self
                puts song.name
            end
        end
    end

end
