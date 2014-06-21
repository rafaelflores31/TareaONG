class Message < ActiveRecord::Base
	validates_presence_of :title, :description, :email
end
