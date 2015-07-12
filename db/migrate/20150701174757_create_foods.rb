class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name, null: false 
      t.text :description
      t.text :links
      t.timestamps null: false
    end
  end
end