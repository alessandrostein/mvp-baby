class CreateMothers < ActiveRecord::Migration
  def change
    create_table :mothers do |t|
      t.string :name
      t.date :birthday
      t.string :about
      t.integer :family_id

      t.timestamps
    end
  end
end
