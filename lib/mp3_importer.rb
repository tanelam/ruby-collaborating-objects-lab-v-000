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
      Artist.find_or_create_by_name(name)
      Artist.all.size << Song.new_by_filename(filename)
    end
  end

end
