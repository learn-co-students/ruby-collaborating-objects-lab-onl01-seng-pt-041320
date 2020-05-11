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
            artist_name
        end
    end
    def print_songs
        Song.all.each do |song|
            if song.artist == self
                puts song.name
            end
        end
    end

end
