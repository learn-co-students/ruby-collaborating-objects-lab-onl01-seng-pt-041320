require 'pry'
class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(song_name)
        @name = song_name
        @@all << self
        #binding.pry
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
        file_name_array = file_name.chomp(".mp3").split(" - ")
        artist = file_name_array[0]
        song = file_name_array[1]
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
        #binding.pry
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
        artist.add_song(self)
    end
end

