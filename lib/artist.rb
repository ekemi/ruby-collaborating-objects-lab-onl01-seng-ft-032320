require "pry"

class Artist
  attr_accessor :name , :songs
  @@all= []

  def initialize (name)
       @name = name
       @@all << self
       @songs = []
   end

  def name=(name)
    @name= name
  end
  def name
    @name
    #binding.pry
  end

  def self.all
    @@all
  end

  def add_song(song)
       @song << song
       song.artist= self
       song
      #binding.pry
  end
  def songs
    @song
  #  Song.all.select {|song| song.artist == self}
    #binding.pry
  end
   def self.find_or_create_by_name(name)
     find_name =self.all.detect{|artist| artist.name == name}

     find_name ? find_name : self.new(name)

   end

   def print_songs
     self.songs.each{|song| song.name}
     end
  #
  #     end
  #   @@all = []
  #  def initialize(name)
  #
  #     @name = name
  #     @@all << self
  #  end
  #
  # def self.all
  #    @@all
  #   # binding.pry
  # end
  #
  # def add_song(song)
  #   song.artist = self
  # end
  #
  #  def songs
  #   Song.all.select {|song| song.artist == self}
  #    #binding.pry
  #  end
  #
  # def self.find_or_create_by_name(name)
  #    #self.artist
  #   artist_object =  self.all.find do |artist|
  #
  #        artist.name == name
  #      end
  #
  #      artist_object ? artist_object : self.new(name)
  #    end
  #
  #    def print_songs
  #
  #      songs.each{|song| song.name}
  #    end
end
