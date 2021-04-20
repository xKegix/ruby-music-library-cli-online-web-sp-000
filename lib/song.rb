require 'pry'

	extend Findable # Take all methods in Findable, add them as class methods.
	extend Persistable::ClassMethods # extend class methods.
	include Persistable::InstanceMethods # include for instance methods.

class Song
	attr_accessor :name

	@@all = []

	def initialize
		save
	end

	def self.all
		@@all
	end

	def save
		@@all << self
	end

	def self.reset_all
		@@all.clear
	end

	def self.count
		@@all.size
	end




end








end
