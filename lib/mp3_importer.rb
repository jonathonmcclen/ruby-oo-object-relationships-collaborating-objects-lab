class MP3Importer
    attr_accessor :path
    def initialize(file_path)
        @path = file_path
    end 

    def files

    end 

    def size

    end 

    def import(list_of_filenames)
        list_of_filenames.each{ |file_name| song.new_by_filename(file_name) }
    end
end 