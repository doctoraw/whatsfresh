class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.belongs_to :country, index: true, null: false
      t.string :name, null: false
      t.string :code, null: false, limit: 2
      t.timestamps null: false
    end
  end
end