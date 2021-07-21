require 'pry'

class Song
    
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def self.new_by_filename(file_name)
        # file name = [artist name - song name - mp3]
        data = file_name.split(" - ") #splid data into array
        new_song = Song.new(data[1])  #create new song
        new_song.artist_name=(data[0])
        new_song
        #binding.pry
    end

    def artist_name=(name)
        if Artist.all.detect { |n| n.name = name} 
            self.artist = Artist.all.detect { |n| n.name = name}
        else
            self.artist = new_artist = Artist.new(name)
        end
    end 
end 