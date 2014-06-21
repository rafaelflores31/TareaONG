class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
