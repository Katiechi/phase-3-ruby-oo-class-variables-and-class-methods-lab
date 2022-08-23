class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = []
    @@artist_count = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genre_count = @@genres << genre
        @@artist_count = @@artists << artist
    end

    def self.count
        @@count
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.genre_count
        @@genre_count.tally
    end
    def self.artist_count
        @@artist_count.tally
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
adonai = Song.new("Adonai", "Nathaniel Bassey", "worship")
nothing_like = Song.new("Nothing like", "Nathaniel Bassey", "worship")

 ninety_nine_problems.name
# => "99 Problems"

 ninety_nine_problems.artist
# => "Jay-Z"

 ninety_nine_problems.genre

 Song.count
puts Song.genres
 Song.artists
 Song.genre_count