require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        # test
        # new_arr = []
        # genres.each do |i|
        #     unless new_arr.include?(i)
        #         new_arr << i
        #     end
        # end
        # new_arr
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        # test
        # @@genres.each do |i|
        #     if @@genre_count.keys.include?(i.to_sym)
        #         @@genre_count[i.to_sym] += 1
        #     else
        #         @@genre_count[i.to_sym] = 1
        #     end
        # end

        @@genre_count = @@genres.tally
    end

    def self.artist_count
        @@artist_count = @@artists.tally
    end
end

test = Song.new("99 Problems", "Jay-Z", "rap")
test2 = Song.new("99 Problems", "Jay-Z", "pop")
test3 = Song.new("99 Problems", "Jay-Z", "rap")