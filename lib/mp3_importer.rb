# require './spec/fixtures/mp3s'
require "pry"

class MP3Importer
    
    attr_accessor :path, :song

    def initialize(path)
        @path = path
    end

    def files
        # binding.pry
        tracks = Dir.chdir(path) do |path|
            Dir.glob("*.mp3")
        end
        tracks
    end

    def import
        files.each{ |track| Song.new_by_filename(track)}
    end
    
end