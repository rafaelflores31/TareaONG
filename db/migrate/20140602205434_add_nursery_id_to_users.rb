class AddNurseryIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :nursery_id, :integer
  end
end
