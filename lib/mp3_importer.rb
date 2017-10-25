class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
  end

  def import(files)
    files.each do |file| 
      file.split(" - ")
    end
  end

end
