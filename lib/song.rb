class Song
  
  attr_accessor :name :artist :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count++
    
    @name = name
    @artist = artist
    @genre = genre
    
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    
    @@artists.each |artist| do
      if unique_artists.none? {|unique_artist| unique_artist == artist} do
        unique_artists << artist
      end
    end

    unique_artists
  end
  
  def self.genres
    unique_genres = []
    
    @@genres.each |genre| do
      if unique_genres.none? {|unique_genre| unique_genre == genre} do
        unique_genres << genre
      end
    end

    unique_genres
  end
  
  def self.genre_count
    genre_count = {}
    
    @@genres.each |genre| do
      if genre_count.keys.include?(genre) do
        genre_count[genre]++
      else
        genre_count[genre] = 1
      end
    end
    
    genre_count
  end
  
  def self.artist_count
    @@artist_count
  end
  
end