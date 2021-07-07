class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def self.all
    @@all
  end
  
  def songs
    song_list = Song.all.select {|song| song.artist == self}
    song_list
  end
  
  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
  
  
   def self.find_or_create_by_name(name)
        artist_name = @@all.find{|artist| artist.name == name}
        if artist_name
            artist_name
        else
            artist_name = self.new(name)
            artist_name
        end
    end
    
    
  
end