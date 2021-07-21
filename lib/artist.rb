class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end 

    def print_songs
        song_names = []
        songs = Song.all.select { |song| song.artist == self }
        songs.each {|song| song_names << song.name}
        puts song_names.join("\n")
    end 

    def add_song(song)
        song.artist = self
    end 

    def self.find_or_create_by_name(name)
        if @@all.detect { |n| n.name = name} 
            @@all.detect { |n| n.name = name}
        else
            new_artist = Artist.new(name)
        end
    end

end 