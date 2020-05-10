class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
 
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song = self.new(filename)
    song.name = filename.split(" - ")[1]
    filename_artist = filename.split(" - ")[0]
    song.artist_name=(filename_artist)
    song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
  end
  
end