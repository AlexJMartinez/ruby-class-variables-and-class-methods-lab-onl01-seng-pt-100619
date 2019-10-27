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

    @@all.each do |genre|
      if genre == "rap"
        genre.count
      elsif genre == "pop"
        genre.count
      end
      binding.pry

    end
  end

  def self.artist_count

  end
end
