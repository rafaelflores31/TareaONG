class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :description
      t.string :email
      t.integer :nursery_id

      t.timestamps
    end
  end
end
