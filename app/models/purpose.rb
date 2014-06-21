class Purpose < ActiveRecord::Base
validates_presence_of :description
  belongs_to :nursery

end
