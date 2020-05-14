require 'pry'

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


  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
    # @@all = []
    # attr_accessor :title, :artist

    # def initialize(title)
    #     @title = title
    #     @artist = artist
    #     @@all << self

    # end

    # def self.all
    #     @@all
    # end

    # def self.new_by_filename(filename)
    #     filename.split(" - ")[0] = Artist.new(artist)
    #     filename.split(" - ")[1] = self.new(song) #creates a new instance of a song from the file that's passed
    #     artist = Artist.new(artist)
    #     song = self.new(song)
    #     song.artist = artist
    #     song
    #     binding.pry
    # end

    # def artist_name=(artist_name)
    #     artist_name = Artist.new(artist)

end