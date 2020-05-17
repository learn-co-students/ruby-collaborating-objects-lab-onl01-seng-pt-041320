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
    Song.all.select{|x| x.artist == self}
   end
 
    def self.find_or_create_by_name (name)
        artist_name = self.all.find {|x| x.name == name}
        if artist_name 
            artist_name
        else
            artist_name = self.new(name)
            artist_name
        end
    end

    def print_songs
        songs.each do |x|
            puts x.name
    
        end
    end
end