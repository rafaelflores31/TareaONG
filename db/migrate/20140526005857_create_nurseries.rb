class CreateNurseries < ActiveRecord::Migration
  def change
    create_table :nurseries do |t|
      t.string :name
      t.string :country
      t.text :address
      t.text :purpose

      t.timestamps
    end
  end
end
