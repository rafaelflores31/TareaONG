class AddDescriptionToChildren < ActiveRecord::Migration
  def change
    add_column :children, :description, :text
  end
end
