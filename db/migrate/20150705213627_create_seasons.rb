class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.belongs_to :country, index: true
      t.belongs_to :state, index: true
      t.belongs_to :food, index: true
      t.string :month
      t.timestamps null: false
    end
  end
end