require 'pry'
class MP3Importer 
  attr_accessor :song, :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @path.scan(/\.mp3/)
#    binding.pry
  end 
  
  
  
  
end