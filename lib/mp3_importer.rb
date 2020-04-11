class MP3Importer
 attr_accessor :path
   def initialize(path)
       @path = path
   end

   def files
     Dir.entries(path).map{|files| files.split("-").last}
   end


end
