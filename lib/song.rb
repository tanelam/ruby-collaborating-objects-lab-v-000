class Song
attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file)
      artist_name = file.split(" - ")[0]
      song_name = file.split(" - ")[1]
      song = self.new(song_name)
      song.artist_name = artist_name
      song
      
  end



end
