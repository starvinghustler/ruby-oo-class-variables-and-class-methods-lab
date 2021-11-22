class Song
    
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq #Control for duplicates when you code your .genres class method, not when you add genres to the original @@genres array. We will want to know how many songs of each genre have been created. We'll revisit that job a little later on.
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
      end

      def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist]
            artist_count[artist] += 1 
          else
            artist_count[artist] = 1
          end
        end
        artist_count
      end


end
