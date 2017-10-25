require "pry"
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
     Dir[@path+"/*.mp3"].map { |file| file.split("/").last }
  end

  def import
    binding.pry
    files.each { |file| Song.new_by_filename(file)}
     #Song.new_by_filename(file)
  end

end
