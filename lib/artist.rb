require 'pry'
class Artist    # Declared the Artist class.
    @@all = []  # Created empty array for all the songs of the artist class.
    attr_accessor :name, :songs


    def initialize(name)    # Initialized the name instace for the Artist.
        @name = name
        save
    end

    def self.all    # Returning all existing instance with the all array.
        @@all
    end

    def add_song(song)  # Keep track of  an artist's songs.
        song.artist = self
    end

    def songs   # List all the songs that belong to this artist.
        Song.all.select{|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)   # Always return an Artist instance,find or create uniqueness of Objects by name property if none exist create new artist instance.
        self.find(name) ? self.find(name) : self.new(name)
    end

    def self.find(name) # checking to see if the artist array already include this artist name instance.
        self.all.find{|artist| artist.name == name}
    end

    def save    # Save the Artist instances to all array.
        @@all << self
    end

    def print_songs # List all the artist songs.
        songs.each{|song| puts song.name}
    end
end