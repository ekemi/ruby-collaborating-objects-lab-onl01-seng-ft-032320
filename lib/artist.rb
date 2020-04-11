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
      @songs << song
      #binding.pry
  end
  def self.create(name)
      artist = self.new(name)
      artist.name= name
      artist
  end

  def self.find(name)
         self.all.detect {|artist| artist.name == name}
  end
   def self.find_or_create_by_name(name)
     return self.create(name) || self.find(name)
   end
  #
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
  # def songs
  #   Song.all.select {|song| song.artist == self}
  #   #binding.pry
  # end
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
