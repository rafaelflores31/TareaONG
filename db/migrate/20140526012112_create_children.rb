class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :age
      t.integer :nursery_id

      t.timestamps
    end
  end
end
