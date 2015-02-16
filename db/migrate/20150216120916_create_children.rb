class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.string :nickname
      t.date :birthday

      t.timestamps
    end
  end
end
