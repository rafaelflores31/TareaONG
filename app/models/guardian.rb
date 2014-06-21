class Guardian < ActiveRecord::Base
	validates_presence_of :name
	validates_uniqueness_of :email
	has_many :kids
end
