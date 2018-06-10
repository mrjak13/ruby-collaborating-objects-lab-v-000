class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(filename)
    file_song = filename.split(" - ")[1]
    name = self.new(file_song)
    file_artist = filename.split(" - ")[0]
    self.artist.artist_name=(file_artist)
    # binding.pry
    # Artist.add_song(name)
  end

  def self.artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)

  end
end
