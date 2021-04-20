class Genre
	extend Findable
	extend Persistable::ClassMethods
	include Persistable::InstanceMethods

	attr_accessor :name
	attr_reader :songs

	@@all = []

		def initialize(name)
			@name = name
			@songs = []
		end

		def self.all
			@@all
		end

		def self.create(name)
			genre = self.new(name)
			genre.save
			genre
		end

		def songs
			@songs
		end


















end
