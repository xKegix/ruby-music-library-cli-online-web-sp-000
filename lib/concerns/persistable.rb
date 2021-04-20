module Persistable

	module InstanceMethods
	def save 	# adds instance itself into @@all class variable. To store its data.
		self.class.all << self   #Instace method.
	end

	module ClassMethods
	def destroy_all  # empty @@all array. class method.
		self.all.clear
	end

	def count # class method.
		self.all.size
	end

end
end
