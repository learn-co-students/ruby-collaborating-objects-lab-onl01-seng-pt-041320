require 'pry'
class MP3Importer
    attr_accessor :path

    def initialize(file_path)
        @path = file_path
        #files_array = Dir.children(file_path)
        #binding.pry
    end

    def files
        Dir.children(self.path)
        #binding.pry
    end

    def import
        files.each do |file|
            Song.new_by_filename(file)
            #binding.pry
        end
    end
end