class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(filename)
    file_song = filename.split(" - ")[1]
    name = self.new(file_song)
    file_artist = filename.split(" - ")[0]
    artist.artist_name=(file_artist)
    # binding.pry

  end

  def artist_name=(artist)
      self.artist = Artist.find_or_create_by_name(name)
      self.artist.add_song(self)

  end
end
