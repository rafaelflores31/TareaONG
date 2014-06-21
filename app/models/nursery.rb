class Nursery < ActiveRecord::Base
 validates_presence_of :name
 validates_uniqueness_of :name
 has_many :kids
 has_many :children
 has_many :users
 has_many :purposes
end
