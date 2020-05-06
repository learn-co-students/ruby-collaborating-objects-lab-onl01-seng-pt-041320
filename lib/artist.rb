require "pry"

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

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.find_or_create_by_name(name)
        found = self.all.find {|artist| artist.name == name}
        if found == nil
            self.new(name)
        else
            found
        end
    end

    def print_songs
        self.songs.each {|song| puts song.name}
    end

end

#     def print_songs
#         Song.all.each {|song| puts song}
#     end

# end

hanson = Artist.new("Hanson")
drake = Artist.new("Drake")

Artist.all

Artist.find_or_create_by_name("Drake")
Artist.find_or_create_by_name("Bobby")



#     def add_song_by_name(name)
#         song = Song.new(name)
#         add_song(song)
#     end

#     # def self.song_count
#     #     Song.all.size
#     # end

# end

# if self.all.include?(name)
#     self.all.find{|artist| artist.name == name}