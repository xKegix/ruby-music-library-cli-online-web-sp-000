require 'pry'

class Artist #self
	extend Findable
	attr_accessor :name, :songs

	@@all = [] 			# keeps track of all Artist

	def initialize(name)
		@name = name
		@songs =[] # track of songs
	end

	def self.all 	# @@all accessible through this class method.
		@all
	end

	# def save 	# adds instance itself into @@all class variable. To store its data.
	# 	@@all << self
	# end
	#
	# def self.destroy_all  # empty @@all array.
	# 	@@all.clear
	# end
	#
	# def self.count
	# 	@@all.size
	# end

	def self.create(name) 		# custom constructor, instantiates an instance also saves, forcing to exist immediatrly.
		artist = self.new(name) #create new artist.
		artist.save 						# save that artist.
		artist 									# show the artist that is made.
	end

	def add_song(song) # only add songs not in array already.
		song.artist = self if song.artist == nil # this is songs artist if given artist is not there.
		@songs << song if self.songs.include?(song) == false # then add song to @song array if songs of artist is not included in @song array.
	end

	def songs # show all songs.
		@songs
	end

	def genres
		@songs.collect {|song| song.genre}.uniq
	end

	# def self.find_by_name(name)
	# 	@@all.detect {|artist| artist.name == name} # return first artist that makes the statement true - name of every artist to the name passed into this method.
	# end




end





















end
