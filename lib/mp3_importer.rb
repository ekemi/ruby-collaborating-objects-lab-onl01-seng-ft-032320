require "pry"
class MP3Importer
 attr_accessor :path
   def initialize(path)
       @path = path
   end
  binding.pry
   def files
     Dir.entries(path).map{|files| files.split("-").last}

   end


end
