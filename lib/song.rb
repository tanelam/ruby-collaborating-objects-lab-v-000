class Song
attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end


  def self.new_by_filename(filename)
    #artist_name, song_name = filename.split(" - ")
    #song = self.new(new_song)
    #new_song.artist = Artist.find_or_create_by_name(artist_name)
    row = filename_data
      data = row.split(" - ")
      artist_name = data[0]
      song_name = data[1].gsub(".mp3", "")

      song = self.new

      song.name = song_name
      song.artist_name = artist_name

      song
  end



end
