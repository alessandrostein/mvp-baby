class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :name
      t.date :birthday
      t.string :about
      t.integer :family_id

      t.timestamps
    end
  end
end
