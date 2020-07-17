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
    
    # if @@genres.none? {|existing_genre| existing_genre == genre} do
    #   @@genres << genre
    # end
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists
  end
  
  def self.genres
    @@genres
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
    @@artist_count
  end
  
end