class Song
attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def Song.new_by_filename(file)
      artist_name = file.split(" - ")[0]
      song_name = file.split(" - ")[1]
      song = self.new(song_name)
      song.artist_name = artist_name
      song

  end

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    self.artist = artist
    artist.add_song(self)
  end

end
