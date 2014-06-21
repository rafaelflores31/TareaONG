class Child < ActiveRecord::Base
	validates_presence_of :name
	belongs_to :nursery
end
