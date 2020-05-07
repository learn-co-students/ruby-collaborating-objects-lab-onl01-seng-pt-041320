require 'pry'
class MP3Importer
    attr_accessor :path

    def initialize(file_path)
        @path = file_path
        #files_array = Dir.children(file_path)
        #binding.pry
    end

    def files
        # changes directory to the path and looks at each file with .mp3 extension
        file_name = Dir.chdir(self.path) do |file|
            Dir.glob("*.mp3")
        end
        file_name
        #Dir.children(self.path)
        #binding.pry
    end

    def import
        files.each do |file|
            Song.new_by_filename(file)
            #binding.pry
        end
    end
end