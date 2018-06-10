class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(file_name)
    file_song = file_name.split(" - ")[1]
    name = Song.new(file_song)
    file_artist = file_name.split(" - ")[0]
    self.artist_name=(file_artist)
    binding.pry
    # Artist.add_song(name)
  end

  def self.artist_name=(name)
    Artist.find_or_create_by_name(name)
    # Artist.add_song(self)
  end
end
