class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(filename)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
    # file_song = filename.split(" - ")[1]
    # name = Song.new(file_song)
    # file_artist = filename.split(" - ")[0]
    # name.artist_name=(file_artist)
    # binding.pry
    # Artist.add_song(name)
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)

  end
end
