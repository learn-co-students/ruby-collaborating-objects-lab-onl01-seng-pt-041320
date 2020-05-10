class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)    # Name of song initialized.
        @name = name
        save
    end

    def save    # saving the new song instances to the all array.
        @@all << self
    end

    def self.all # Returning all existing Song instances
        @@all
    end

    def self.new_by_filename(filename) # Created a new instance from the file pased in and associates the new song instance with the artist from the filename.
        artist, song = filename.split(" - ")
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
    end

    def artist_name=(name)  # Take in the artist name find or create and artist instance and assigns it to the artist.
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end
end