require 'pry'

class Song 
  attr_reader :song_title, :artist, :genre 
  @@songs = [] 
  @@artists = [] 
  @@count = 0
  @@genres = []
  def initialize(song_title, artist, genre)
    @song_title = song_title
    @artist = artist 
    @genre = genre 
    @@songs << song_title
    @@artists << artist
    @@count = @@artists.length
    @@genres << @genre
  end 

  def name
     @song_title
  end 
 
  def self.count 
    @@songs.uniq.length
    
  end 

  def self.artists
    @@artists.uniq
  end 

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    number_genre_hash = Hash.new(0)
    @@genres.each do |song_genre|
      number_genre_hash[song_genre] += 1 
    end
   number_genre_hash
  end 
  
  def self.artist_count
    number_artist_hash = Hash.new(0)
    @@artists.each do |artist_yo|
      number_artist_hash[artist_yo] += 1 
    end 
   number_artist_hash
  end
end 