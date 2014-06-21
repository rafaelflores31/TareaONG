class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.integer :age
      t.text :record
      t.integer :nursery_id
      t.integer :guardian_id

      t.timestamps
    end
  end
end
