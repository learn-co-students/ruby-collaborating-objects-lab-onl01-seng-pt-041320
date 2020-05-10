class Artist
    attr_accessor :name, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def songs
        @songs
    end

    def self.create_by_name(name)
        artist = Artist.new(name)
        artist.name = name
        artist
    end

    def self.find_by_name(name)
        self.all.find{|artists| artists.name == name}
    end

    def self.find_or_create_by_name(name)
        if self.find_by_name(name) == nil
            self.create_by_name(name)
        else
            self.find_by_name(name)
        end
    end

    def print_songs
        puts @songs.collect{|song| song.name}
    end

end