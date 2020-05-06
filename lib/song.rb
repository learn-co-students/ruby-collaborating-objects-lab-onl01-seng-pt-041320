class Song
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def artist_name=(name)
        @artist = Artist.find_or_create_by_name(name)
        @artist.add_song(self)
    end

    def self.new_by_filename(file_name)
        name = file_name.split(" - ")[0]
        title = file_name.split(" - ")[1]
        song = self.new(title)
        @artist = Artist.find_or_create_by_name(name)
        @artist.add_song(song)
        song
    end

end