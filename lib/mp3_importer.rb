require "pry"
class MP3Importer
 attr_accessor :path
   def initialize(path)
       @path = path
   end
  bilding.pry
   def files
     Dir.entries(path).map{|files| files.split("-").last}

   end


end
