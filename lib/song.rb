class Song
attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(file)
  
      artist_name = file.split(" - ")
      artist_name = data[0]
      song_name = data[1].gsub(".mp3", "")

      song = self.new

      song.name = song_name
      song.artist_name = artist_name

      song
  end



end
