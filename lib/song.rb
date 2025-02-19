require 'pry'

class Song
  attr_accessor :name, :artist, :genre

 @@count = 0
 @@artists = []
 @@genres = []
 @@genre_count = {}
 @@all = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << artist
    @@genres << genre
    @@count += 1
    @@all << self
#binding.pry
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

  def self.all
    @@all
  end

  def self.genre_count
    genre_totals = {}
    @@genres.each do |genre|
      if genre_totals[genre]
        genre_totals[genre] += 1
      else
        genre_totals[genre] = 1
      end
      #binding.pry
    end
    genre_totals
  end

  def self.artist_count
    artist_totals = {}
    @@artists.each do |artist|
      if artist_totals[artist]
        artist_totals[artist] += 1
      else
        artist_totals[artist] = 1
      end
    end
artist_totals
  end
end
