 module Findable

		 def find_by_name(name)
	 		self.all.detect {|artist| artist.name == name} # return first artist that makes the statement true - name of every artist to the name passed into this method.
	 	end

	 def find_or_create_by_name(name)
		 find_by_name(name) || self.create(name)
	 end

 end
