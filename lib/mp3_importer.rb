class MP3Importer 
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path).select {|song| !File.directory?(song) && song.end_with?(".mp3")}
  end
  
  def import 
    files.each do |song| # why does file work and not @file? what does file relate to? 
      Song.new_by_filename(song)
    end
  end
end