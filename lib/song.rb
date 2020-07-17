class Song
  
  attr_accessor :name :artist :genre
  
  @@song_count = 0
  
  def initialize(song)
    @@song_count++
  end
  
  def self.count
    @@song_count
  end
  
end