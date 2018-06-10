class Song
  attr_accessor :title, :artist

  def initialize(title)
    @title = title
  end



  def self.new_by_filename(file_name)
    file_song = file_name.split(" - ")[1]
    name = Song.new(file_song)
    file_artist = file_name.split(" - ")[0]
    name.artist_name=(file_artist)
    # binding.pry
    # Artist.add_song(name)
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
end
