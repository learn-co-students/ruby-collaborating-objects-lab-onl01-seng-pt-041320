# Sting = Artist.new("Sting")
# puts Artist.allrequire 'pry'
class MP3Importer
    attr_accessor :path

    def initialize (path) #initialize as per instructions
        @path = path
    end

    def files #method getting list of files in directory taking only mp3 files
        files = Dir.entries(path)
        files.select! {|file| file[/\.mp3$/]}
    end
    
    def import #importing into Song class by invoking .new_by_name method for each mp3 file in the list
        files.each do |filename|
            Song.new_by_filename (filename)
        end
    end
end

