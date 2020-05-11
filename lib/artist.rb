require 'pry'
class Artist
    attr_accessor :name, :songs
@@all = []

    def initialize (name)
        @name = name
        @@all << self
        @songs =[]
    end

def self.all
    @@all 
end

# def songs
#     Songs.all.select do |song|
#         if song.artist == self 
#             song
# end
# end 
# end 

def add_song(song)
    @songs << song 
end

def self.find_or_create_by_name(name)
    if self.find(name)
        self.find(name)
        else
            self.new(name)
        end
    end


def self.find(name)
    self.all.find {|artist| artist.name == name}
end

def print_songs
    puts @songs.map {|song| song.name}
end

end

   