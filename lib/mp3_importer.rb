class MP3Importer
    attr_accessor :path 

    def initialize(path)
        @path = path 
    end

    def files
        files = Dir.entries(@path).select {|file|
         file.include?("mp3")}
    end

    def import 
        files.select{|files| Song.new_by_filename(files)}
    end
end