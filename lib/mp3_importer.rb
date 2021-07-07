class MP3Importer
    attr_reader :path # Getter method For the MP3Importer.

    def initialize(path)    # Initialized and assigned instance path to path.
        @path = path
    end

    def files   # Loaded all mp3 files  in the directory and set filename to just mp3 filename with no path.
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    end

    def import  # Accepts an artist's name, finds or creates an Artist instance and assigns it to the Song's artist attribute.
        files.each{|f| Song.new_by_filename(f)}
    end
end