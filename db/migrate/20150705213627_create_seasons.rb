class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.belongs_to :country, index: true, null: false
      t.belongs_to :state, index: true, null: false
      t.belongs_to :food, index: true, null: false
      t.integer :month, null: false, limit: 2
      t.timestamps null: false
    end
  end
end