class Song
attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def self.new_by_filename
    
    data = row.split(" - ")

    song = self.new()

    new_song.artist = Artist.find_or_create_by_name(artist_name)
    song
  end



end
