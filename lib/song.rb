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

  end
end
