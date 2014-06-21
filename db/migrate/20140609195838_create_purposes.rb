class CreatePurposes < ActiveRecord::Migration
  def change
    create_table :purposes do |t|
      t.string :description
      t.integer :nursery_id

      t.timestamps
    end
  end
end
