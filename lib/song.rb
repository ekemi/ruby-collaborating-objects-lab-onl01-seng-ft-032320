class Song
   @@all =[]
   attr_accessor :name, :artist
  def initialize(name)
      @@all << self
      @name = name
      end

  def self.all
     @@all
     #binding.pry
  end

  def self.new_by_filename(filenames)
    artist_name = filenames.split(" - ")[0]
    song_name = filenames.split(" - ")[1]

    song = Song.new(song_name)
    song.artist_name = artist_name
    song

  end
end
