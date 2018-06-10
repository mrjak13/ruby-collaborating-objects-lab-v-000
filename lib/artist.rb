require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs =[]
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.detect do |name|
      if self.name == name
      else name = Artist.new(name)
      end
    end
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end
end
