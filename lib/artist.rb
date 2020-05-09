class Artist

    attr_accessor :name, :songs, :artist
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
        song.artist = self
        song
    end

    def self.find_or_create_by_name(name)
        self.all.detect {|artist| artist.name == name} || Artist.new(name)
    end

    def print_songs
        self.songs.each {|song| puts song.name}
    end
    
end