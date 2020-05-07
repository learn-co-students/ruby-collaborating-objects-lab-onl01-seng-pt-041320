require 'pry'
class Artist
    attr_accessor :name, :songs
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def add_song(song_name) # song_name is Song instance, self is Artist instance
        @songs << song_name
        #binding.pry
    end

    def songs
        @songs
    end

    def self.find_or_create_by_name(name)
        found = self.all.find{|artist| artist.name == name}

        if found
            found
        else
            new_artist = self.new(name)
        end
    end

    def print_songs
        self.songs.each do |song|
            puts song.name
        end
    end
end