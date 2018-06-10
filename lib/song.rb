class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end



  def self.new_by_filename(filename)
    file_song = filename.split(" - ")[1]
    name = self.new(file_song)
    file_artist = filename.split(" - ")[0]
    name.artist_name=(file_artist)
    name
    binding.pry

  end

  def artist_name=(name)
      Artist.find_or_create_by_name(name)
      # Artist.add_song(self)

  end
end
