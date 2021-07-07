class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.new_by_filename(file_name)
        track = file_name.chomp(".mp3").split(" - ")
        song = self.new(track[1])
        song.artist_name=(track[0])
        song
    end
    
    def artist_name=(name)
        artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end