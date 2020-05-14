class Artist 
  attr_accessor :songs, :name, :all 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def save 
    self.class.all << self 
  end 
  
  def self.find_or_create_by_name(name)
      existing_artist = self.all.find {|artist| artist.name == name}
        if existing_artist
          existing_artist
        else 
          name = Artist.new(name)
        end
      end
  
  def print_songs
    self.songs.each{|song| puts song.name}
  end
end