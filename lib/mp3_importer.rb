require 'pry'

class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
        # binding.pry
    end

    def files
        Dir.chdir(@path) {|path| Dir.glob("*.mp3")}  #  loads all the mp3 files in the path directory
        # binding.pry 
    end

    def import        
        files.each {|filename| Song.new_by_filename(filename)}

        # binding.pry
    end
end