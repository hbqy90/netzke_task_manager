class Task < ActiveRecord::Base
	#attr_accessible :done, :due, :name, :notes, :priority
	validates_presence_of :name
end
